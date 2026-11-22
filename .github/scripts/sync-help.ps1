<#
.SYNOPSIS
Brings the Markdown copy of the ABCpdf .NET help in this repository up to date with the help on websupergoo.com.

.DESCRIPTION
Reads the site's sitemap, keeps the help pages (those under -Prefix), and fetches as Markdown, through the site's MCP
service, each page that is new or whose date in the sitemap has changed since it was last fetched. Pages that have
gone from the sitemap are deleted. With -Full, every page is fetched again and any stray .md file in -Out is deleted (apart from -Keep and -Readme).

What was fetched is recorded in -State (address, sitemap date, file), so the next run fetches only what has changed.
A page the service can't give (not in its index) is recorded too, and asked for again only when its date changes.

Links between help pages stay relative, so they work on GitHub. The images the pages show are copied from the site
too: each run asks the site for each one only if it has changed since the date recorded in -ImageState (a 304
answer carries no image), and deletes those no page shows any more. Links to the rest of the site become full
https://www.websupergoo.com addresses. Pages too long for one fetch are put together from their sections.

Runs with PowerShell 7 (pwsh), on Windows or Linux.

.EXAMPLE
pwsh ./.github/scripts/sync-help.ps1          (from the repository's top folder)
pwsh ./.github/scripts/sync-help.ps1 -Full
#>
[CmdletBinding()]
param(
    [string] $Site = 'https://www.websupergoo.com',
    [string] $Sitemap = '',                 # default: $Site/sitemap.xml
    [string] $Mcp = '',                     # default: $Site/mcp
    [string] $ImageSite = '',               # where the images are fetched from; default: $Site
    [string] $Prefix = 'helppdfnet/source/', # the help's folder on the site
    [string] $Out = '.',                    # where the Markdown goes in the repository (run from its top folder)
    [string] $Readme = 'README.md',         # a copy of the help's start page, for GitHub to show ('' for none)
    [string[]] $Keep = @('README.md', 'LICENSE.md'),  # files in -Out that a full refresh leaves alone
    [string] $State = '.sync/help-pages.tsv',
    [string] $ImageState = '.sync/help-images.tsv',
    [switch] $Full,                         # fetch every page again, and delete stray files
    [int] $DelayMs = 1100,                  # between requests: the service allows 60 a minute
    [int] $ImageDelayMs = 100,              # between image requests (to the site itself, not the service)
    [int] $MaxFetches = 0,                  # stop after this many pages (0: no limit), e.g. to try it out
    [string] $MessageFile = ''              # write a commit message here
)

Set-StrictMode -Version 3.0
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$Site = $Site.TrimEnd('/')
if (-not $Sitemap) { $Sitemap = "$Site/sitemap.xml" }
if (-not $Mcp) { $Mcp = "$Site/mcp" }
if (-not $ImageSite) { $ImageSite = $Site }
$ImageSite = $ImageSite.TrimEnd('/')
if (-not $Prefix.EndsWith('/')) { $Prefix += '/' }
$utf8 = [System.Text.UTF8Encoding]::new($false)
$pageExtensions = @('.htm', '.html', '.asp', '.aspx')
$imageExtensions = @('.png', '.gif', '.jpg', '.jpeg', '.svg', '.webp', '.bmp', '.ico')

# ------------------------------------------------------------------------------------------------ the sitemap

# Every <url> in the sitemap (following a sitemap index): loc -> lastmod.
function Read-Sitemap([string] $address) {
    $pages = [ordered]@{}
    $xml = [xml](Invoke-WebRequest -Uri $address -UseBasicParsing -TimeoutSec 300).Content
    if ($xml.DocumentElement.LocalName -eq 'sitemapindex') {
        foreach ($map in @($xml.DocumentElement.ChildNodes | Where-Object LocalName -eq 'sitemap')) {
            $inner = Read-Sitemap (Child-Text $map 'loc')
            foreach ($key in $inner.Keys) { $pages[$key] = $inner[$key] }
        }
        return $pages
    }
    foreach ($url in @($xml.DocumentElement.ChildNodes | Where-Object LocalName -eq 'url')) {
        $loc = Child-Text $url 'loc'
        if ($loc) { $pages[$loc] = Child-Text $url 'lastmod' }
    }
    return $pages
}

function Child-Text($node, [string] $name) {
    $child = @($node.ChildNodes | Where-Object LocalName -eq $name) | Select-Object -First 1
    if ($child) { return $child.InnerText.Trim() } else { return '' }
}

# A sitemap address's path below the site ("helppdfnet/source/x.htm"), or $null if it's on another site.
function Site-Path([string] $loc) {
    if (-not $loc.StartsWith($Site + '/', [StringComparison]::OrdinalIgnoreCase)) { return $null }
    $path = $loc.Substring($Site.Length + 1)
    $cut = $path.IndexOfAny([char[]]'?#')
    if ($cut -ge 0) { $path = $path.Substring(0, $cut) }
    return [Uri]::UnescapeDataString($path)
}

# The Markdown page a site page becomes, as the builder names it: x.htm -> x.md, default.htm -> index.md, a folder
# address ("/") -> its index.md. $null for anything that isn't a page.
function Markdown-Path([string] $path) {
    if ($path -eq '' -or $path.EndsWith('/')) { return $path + 'index.md' }
    $slash = $path.LastIndexOf('/') + 1
    $file = $path.Substring($slash)
    $ext = [IO.Path]::GetExtension($file)
    if ($pageExtensions -notcontains $ext.ToLowerInvariant()) { return $null }
    $stem = $file.Substring(0, $file.Length - $ext.Length)
    if ($stem -ieq 'default') { $stem = 'index' }
    return $path.Substring(0, $slash) + $stem + '.md'
}

# ------------------------------------------------------------------------------------------------ the MCP service

$script:session = $null
$script:requestId = 0
$script:lastRequest = [DateTime]::MinValue

# One JSON-RPC message to the service; the reply's JSON (or $null for a notification). Waits between requests, and
# when the service says to slow down.
function Invoke-Mcp([string] $method, $params, [switch] $Notification) {
    $message = [ordered]@{ jsonrpc = '2.0'; method = $method }
    if ($null -ne $params) { $message.params = $params }
    $id = $null
    if (-not $Notification) { $id = ++$script:requestId; $message.id = $id }
    $body = $message | ConvertTo-Json -Depth 10 -Compress
    $headers = @{ Accept = 'application/json, text/event-stream' }
    if ($script:session) { $headers['Mcp-Session-Id'] = $script:session }
    if ($method -ne 'initialize') { $headers['MCP-Protocol-Version'] = '2025-06-18' }

    for ($attempt = 1; ; $attempt++) {
        $wait = $DelayMs - ([DateTime]::UtcNow - $script:lastRequest).TotalMilliseconds
        if ($wait -gt 0) { Start-Sleep -Milliseconds ([int]$wait) }
        $script:lastRequest = [DateTime]::UtcNow
        try {
            $response = Invoke-WebRequest -Uri $Mcp -Method Post -Body $body -ContentType 'application/json' `
                -Headers $headers -UseBasicParsing -TimeoutSec 120 -SkipHttpErrorCheck
        }
        catch {
            if ($attempt -ge 3) { throw }
            Write-Warning "  $method failed ($($_.Exception.Message)); trying again"
            Start-Sleep -Seconds (5 * $attempt)
            continue
        }
        $status = [int]$response.StatusCode
        if ($status -eq 429) {
            $retry = 60
            if ($response.Headers['Retry-After']) { $retry = [int]("$($response.Headers['Retry-After'])") }
            Write-Host "  (the service asked to slow down: waiting $retry s)"
            Start-Sleep -Seconds ([Math]::Max(1, $retry))
            $attempt--   # not a failure
            continue
        }
        if ($status -eq 404 -and $script:session -and $method -ne 'initialize') {
            # The session has gone (the service restarted): start another and send this again.
            Write-Host '  (the service restarted: connecting again)'
            Connect-Mcp
            if ($method -eq 'notifications/initialized') { return $null }   # Connect-Mcp has just sent it
            $headers['Mcp-Session-Id'] = $script:session
            continue
        }
        if ($status -ge 500 -and $attempt -lt 3) {
            Write-Warning "  $method answered $status; trying again"
            Start-Sleep -Seconds (5 * $attempt)
            continue
        }
        if ($status -lt 200 -or $status -ge 300) { throw "The service answered $status to $method." }
        if ($method -eq 'initialize' -and $response.Headers['Mcp-Session-Id']) {
            $script:session = "$($response.Headers['Mcp-Session-Id'])"
        }
        if ($Notification) { return $null }
        return Read-Reply ([string]$response.Content) ([string]$response.Headers['Content-Type']) $id
    }
}

# The JSON-RPC reply in a response: plain JSON, or the message events of a server-sent event stream.
function Read-Reply([string] $content, [string] $type, $id) {
    if ($type -like 'text/event-stream*') {
        foreach ($event in ($content -replace "`r`n", "`n") -split "`n`n") {
            $data = (($event -split "`n") | Where-Object { $_.StartsWith('data:') } | ForEach-Object { $_.Substring(5).TrimStart() }) -join "`n"
            if (-not $data) { continue }
            $json = $data | ConvertFrom-Json -Depth 20
            if ($json.PSObject.Properties['id'] -and $json.id -eq $id) { return $json }
        }
        throw 'The service sent no reply.'
    }
    return $content | ConvertFrom-Json -Depth 20
}

function Connect-Mcp {
    $script:session = $null
    $reply = Invoke-Mcp 'initialize' @{
        protocolVersion = '2025-06-18'
        capabilities    = @{}
        clientInfo      = @{ name = 'github-help-sync'; version = '1.0' }
    }
    if ($reply.PSObject.Properties['error']) { throw "The service refused to connect: $($reply.error.message)" }
    Invoke-Mcp 'notifications/initialized' $null -Notification | Out-Null
}

# A page or section from the fetch tool: @{ Ok; Id; Markdown } (Markdown without the tool's header lines), or
# Ok = $false with the tool's message.
function Get-Page([string] $id, [switch] $SectionOnly) {
    $arguments = @{ id = $id }
    if ($SectionOnly) { $arguments.section_only = $true }
    $reply = Invoke-Mcp 'tools/call' @{ name = 'fetch'; arguments = $arguments }
    if ($reply.PSObject.Properties['error']) { return @{ Ok = $false; Message = $reply.error.message } }
    $text = (@($reply.result.content) | Where-Object type -eq 'text' | Select-Object -First 1).text
    $isError = $reply.result.PSObject.Properties['isError'] -and $reply.result.isError
    if ($isError -or -not $text) { return @{ Ok = $false; Message = "$text" } }

    # "Page: <id>", "URL: ...", "In: ...", "Product: ...", a blank line, then the Markdown.
    $lines = ($text -replace "`r`n", "`n") -split "`n"
    $pageId = $null
    $i = 0
    for (; $i -lt $lines.Count -and $lines[$i] -ne ''; $i++) {
        if ($lines[$i].StartsWith('Page: ')) { $pageId = $lines[$i].Substring(6).Trim() }
    }
    if (-not $pageId) { return @{ Ok = $false; Message = 'The fetch reply had no Page line.' } }
    $markdown = ($lines[($i + 1)..($lines.Count - 1)] -join "`n")
    return @{ Ok = $true; Id = $pageId; Markdown = $markdown }
}

# A whole page. A page longer than one fetch gives comes back with a list of its other sections at the end:
# those are fetched one at a time and added, under their headings.
function Get-WholePage([string] $address) {
    $page = Get-Page $address
    if (-not $page.Ok) { return $page }
    $marker = $page.Markdown.IndexOf("`n[The page is long: ")
    if ($marker -lt 0) { return $page }

    $rest = $page.Markdown.Substring($marker)
    $markdown = $page.Markdown.Substring(0, $marker).TrimEnd() + "`n"
    $ids = [regex]::Matches($rest, '(?m)^- (\S+#\d+)\s') | ForEach-Object { $_.Groups[1].Value }
    foreach ($sectionId in $ids) {
        $section = Get-Page $sectionId -SectionOnly
        if (-not $section.Ok) { return @{ Ok = $false; Message = "section $sectionId`: $($section.Message)" } }
        # "# Title", a blank line, then "## Heading" and the section.
        $body = $section.Markdown -replace '^# [^\n]*\n+', ''
        $markdown += "`n" + $body.TrimEnd() + "`n"
    }
    $page.Markdown = $markdown
    $page.Sections = @($ids).Count
    return $page
}

# ------------------------------------------------------------------------------------------------ links

# A path with . and .. worked out ("a/b/../c.md" -> "a/c.md"); $null if it climbs above the site.
function Normalise-Path([string] $path) {
    $parts = [System.Collections.Generic.List[string]]::new()
    foreach ($part in $path -split '/') {
        if ($part -eq '.' -or $part -eq '') { continue }
        if ($part -eq '..') {
            if ($parts.Count -eq 0) { return $null }
            $parts.RemoveAt($parts.Count - 1)
            continue
        }
        $parts.Add($part)
    }
    $result = $parts -join '/'
    if ($path.EndsWith('/') -and $result) { $result += '/' }
    return $result
}

# The relative link from one page to another (both paths below the site).
function Relative-Link([string] $from, [string] $to) {
    $here = @(($from -split '/') | Select-Object -SkipLast 1)
    $there = @($to -split '/')
    $common = 0
    while ($common -lt $here.Count -and $common -lt $there.Count - 1 -and $here[$common] -ieq $there[$common]) { $common++ }
    $up = @(for ($i = $common; $i -lt $here.Count; $i++) { '..' })
    return (@($up) + @($there[$common..($there.Count - 1)])) -join '/'
}

# The spelling to use for a newly seen image: an existing file's in the repository, if there is one whose name
# differs only in case (it came from the site, so it's likely right), otherwise the link's.
function Image-Spelling([string] $image) {
    $file = Repo-File $image
    $folder = Split-Path $file -Parent
    $listFolder = if ($folder) { $folder } else { '.' }
    if (-not $script:folderFiles.ContainsKey($listFolder)) {
        $script:folderFiles[$listFolder] = if (Test-Path -LiteralPath $listFolder) { @(Get-ChildItem -LiteralPath $listFolder -File | ForEach-Object Name) } else { @() }
    }
    $name = Split-Path $file -Leaf
    $existing = @($script:folderFiles[$listFolder] | Where-Object { $_ -ieq $name }) | Select-Object -First 1
    if (-not $existing -or $existing -ceq $name) { return $image }
    return $image.Substring(0, $image.Length - $name.Length) + $existing
}

# Where one link on a page should point in the repository. $script:helpPages: every help page's Markdown path,
# by its lower-cased path (to correct the case of a link: the site doesn't mind, GitHub does).
# $script:sitePages: every other site page's address, by its Markdown path.
function Rewrite-Target([string] $target, [string] $pageId) {
    if ($target -eq '' -or $target.StartsWith('#') -or $target.StartsWith('//') -or $target -match '^[A-Za-z][A-Za-z0-9+.-]*:') {
        return $target
    }
    $angle = $target.StartsWith('<') -and $target.EndsWith('>')
    if ($angle) { $target = $target.Substring(1, $target.Length - 2) }
    $cut = $target.IndexOfAny([char[]]'?#')
    $tail = if ($cut -ge 0) { $target.Substring($cut) } else { '' }
    $path = if ($cut -ge 0) { $target.Substring(0, $cut) } else { $target }
    $decoded = [Uri]::UnescapeDataString($path)

    if ($decoded.StartsWith('/')) { $resolved = Normalise-Path $decoded.Substring(1) }
    else {
        $folder = $pageId.Substring(0, $pageId.LastIndexOf('/') + 1)
        $resolved = Normalise-Path ($folder + $decoded)
    }
    if ($null -eq $resolved) { $script:odd.Add("$pageId -> $target (above the site)"); return $(if ($angle) { "<$target>" } else { $target }) }

    if ($resolved.EndsWith('.md', [StringComparison]::OrdinalIgnoreCase)) {
        $help = $script:helpPages[$resolved.ToLowerInvariant()]
        if ($help) {
            $link = Relative-Link $pageId $help
            return (Escape-Link $link $angle) + $tail
        }
        $live = $script:sitePages[$resolved.ToLowerInvariant()]
        if ($live) { return (Escape-Link $live $angle) + $tail }
        if ($resolved.StartsWith($Prefix, [StringComparison]::OrdinalIgnoreCase)) {
            # A help page that isn't in the sitemap: leave it as it is (it may appear later).
            $script:odd.Add("$pageId -> $target (no such page in the sitemap)")
            return $(if ($angle) { "<$target>" } else { $target })
        }
        $script:odd.Add("$pageId -> $target (no such page in the sitemap: linked to its .htm on the site)")
        return (Escape-Link ("$Site/" + $resolved.Substring(0, $resolved.Length - 3) + '.htm') $angle) + $tail
    }
    # An image in the help: copied into the repository beside the pages (see Sync-Images), so a relative link. The
    # same image can be written with different case on different pages; the first spelling seen is the one used.
    $isImage = $imageExtensions -contains [IO.Path]::GetExtension($resolved).ToLowerInvariant()
    if ($isImage -and $resolved.StartsWith($Prefix, [StringComparison]::OrdinalIgnoreCase)) {
        $key = $resolved.ToLowerInvariant()
        if (-not $script:imageNames.ContainsKey($key)) { $script:imageNames[$key] = Image-Spelling $resolved }
        $image = $script:imageNames[$key]
        $script:pageImages[$image] = $true
        return (Escape-Link (Relative-Link $pageId $image) $angle) + $tail
    }
    if ($isImage) { $script:odd.Add("$pageId -> $target (an image outside the help: linked to the site)") }
    # Any other file: on the site, where it is.
    return (Escape-Link ("$Site/" + $resolved) $angle) + $tail
}

function Escape-Link([string] $link, [bool] $angle) {
    if ($angle) { return "<$link>" }
    $escaped = $link -replace ' ', '%20' -replace '\(', '%28' -replace '\)', '%29'
    return $escaped
}

$linkPattern = [regex]'(!?\[(?:[^\[\]]|\[[^\[\]]*\])*\]\()(<[^>\n]*>|[^()\s]*(?:\([^)\s]*\)[^()\s]*)?)((?:\s+"[^"\n]*")?\))'
$attributePattern = [regex]'(\s(?:href|src)\s*=\s*")([^"]*)(")'
$inlineCode = [regex]'(`+)[^`]*?\1'

# A page's links rewritten, leaving code alone (fenced blocks and inline code).
function Rewrite-Links([string] $markdown, [string] $pageId) {
    $builder = [System.Text.StringBuilder]::new()
    $fence = $null
    foreach ($line in $markdown -split "`n") {
        $trimmed = $line.TrimStart()
        if ($fence) {
            if ($trimmed.StartsWith($fence)) { $fence = $null }
            [void]$builder.Append($line).Append("`n")
            continue
        }
        if ($trimmed -match '^(```+|~~~+)') {
            $fence = $Matches[1]
            [void]$builder.Append($line).Append("`n")
            continue
        }
        # Rewrite between the inline code spans.
        $position = 0
        foreach ($code in $inlineCode.Matches($line)) {
            [void]$builder.Append((Rewrite-Text $line.Substring($position, $code.Index - $position) $pageId)).Append($code.Value)
            $position = $code.Index + $code.Length
        }
        [void]$builder.Append((Rewrite-Text $line.Substring($position) $pageId)).Append("`n")
    }
    return $builder.ToString().TrimEnd("`n") + "`n"
}

function Rewrite-Text([string] $text, [string] $pageId) {
    $text = $linkPattern.Replace($text, { param($m) $m.Groups[1].Value + (Rewrite-Target $m.Groups[2].Value $pageId) + $m.Groups[3].Value })
    return $attributePattern.Replace($text, { param($m) $m.Groups[1].Value + (Rewrite-Target $m.Groups[2].Value $pageId) + $m.Groups[3].Value })
}

# ------------------------------------------------------------------------------------------------ the record

# loc -> @{ Lastmod; File; Images } (File '-' when the service couldn't give the page; Images: the help images the
# page shows, by their paths on the site).
function Read-State([string] $path) {
    $record = @{}
    if (-not (Test-Path $path)) { return $record }
    foreach ($line in [IO.File]::ReadAllLines($path, $utf8) | Select-Object -Skip 1) {
        $cells = $line -split "`t"
        if ($cells.Count -lt 3) { continue }
        $images = if ($cells.Count -ge 4 -and $cells[3]) { @($cells[3] -split '\|') } else { @() }
        $record[$cells[0]] = @{ Lastmod = $cells[1]; File = $cells[2]; Images = $images }
    }
    return $record
}

function Write-State([string] $path, $record) {
    $folder = Split-Path $path -Parent
    if ($folder) { [void](New-Item -ItemType Directory -Force -Path $folder) }
    $lines = [System.Collections.Generic.List[string]]::new()
    $lines.Add("loc`tlastmod`tfile`timages")
    foreach ($loc in $record.Keys | Sort-Object { $_ } -CaseSensitive) {
        $images = @($record[$loc].Images) -join '|'
        $lines.Add("$loc`t$($record[$loc].Lastmod)`t$($record[$loc].File)`t$images")
    }
    [IO.File]::WriteAllText($path, ($lines -join "`n") + "`n", $utf8)
}

# The help's images: site path -> @{ Lastmod (the site's Last-Modified, as sent); File }.
function Read-Images([string] $path) {
    $images = @{}
    if (-not (Test-Path $path)) { return $images }
    foreach ($line in [IO.File]::ReadAllLines($path, $utf8) | Select-Object -Skip 1) {
        $cells = $line -split "`t"
        if ($cells.Count -ge 3) { $images[$cells[0]] = @{ Lastmod = $cells[1]; File = $cells[2] } }
    }
    return $images
}

function Write-Images([string] $path, $images) {
    $folder = Split-Path $path -Parent
    if ($folder) { [void](New-Item -ItemType Directory -Force -Path $folder) }
    $lines = [System.Collections.Generic.List[string]]::new()
    $lines.Add("path`tlastmod`tfile")
    foreach ($image in $images.Keys | Sort-Object { $_ } -CaseSensitive) {
        $lines.Add("$image`t$($images[$image].Lastmod)`t$($images[$image].File)")
    }
    [IO.File]::WriteAllText($path, ($lines -join "`n") + "`n", $utf8)
}

# Brings one image up to date: asks the site for it only if it has changed since the date recorded (a 304 answer
# has no body), and writes it if it has. Returns 'added', 'updated', 'same', 'missing' or 'failed'.
function Sync-Image([string] $image, $images) {
    $file = Repo-File $image
    $known = $images[$image]
    $headers = @{}
    if ($known -and $known.Lastmod -and (Test-Path -LiteralPath $file)) { $headers['If-Modified-Since'] = $known.Lastmod }
    $address = "$ImageSite/" + ((($image -split '/') | ForEach-Object { [Uri]::EscapeDataString($_) }) -join '/')
    $wait = $ImageDelayMs - ([DateTime]::UtcNow - $script:lastImageRequest).TotalMilliseconds
    if ($wait -gt 0) { Start-Sleep -Milliseconds ([int]$wait) }
    $script:lastImageRequest = [DateTime]::UtcNow
    try {
        $response = Invoke-WebRequest -Uri $address -Headers $headers -UseBasicParsing -TimeoutSec 120 -SkipHttpErrorCheck
    }
    catch {
        Write-Warning "  image $image`: $($_.Exception.Message)"
        return 'failed'
    }
    $status = [int]$response.StatusCode
    if ($status -eq 304) { return 'same' }
    if ($status -ne 200) {
        $script:odd.Add("image $image (the site answered $status)")
        return 'missing'
    }
    $bytes = $response.RawContentStream.ToArray()
    $lastmod = "$($response.Headers['Last-Modified'])"
    $result = 'added'
    if (Test-Path -LiteralPath $file) {
        $old = [IO.File]::ReadAllBytes($file)
        $result = if ([Linq.Enumerable]::SequenceEqual([byte[]]$old, [byte[]]$bytes)) { 'same' } else { 'updated' }
    }
    if ($result -ne 'same') {
        $folder = Split-Path $file -Parent
        if ($folder) { [void](New-Item -ItemType Directory -Force -Path $folder) }
        [IO.File]::WriteAllBytes($file, $bytes)
    }
    $images[$image] = @{ Lastmod = $lastmod; File = $file }
    return $result
}

# The repository file for a help page ("helppdfnet/source/5-abcpdf/x.md" -> "5-abcpdf/x.md", under -Out).
function Repo-File([string] $pageId) {
    $folder = $Out.TrimEnd('/', '\')
    if ($folder -eq '.' -or $folder -eq '') { return $pageId.Substring($Prefix.Length) }
    return $folder + '/' + $pageId.Substring($Prefix.Length)
}

# Deletes a page's file, unless another sitemap address still gives the same page.
function Remove-PageFile([string] $file, [string] $loc) {
    if ($file -eq '-') { return }
    foreach ($other in $record.Keys) {
        if ($other -ne $loc -and $record[$other].File -eq $file -and $help.Contains($other)) { return }
    }
    if (Test-Path -LiteralPath $file) { Remove-Item -LiteralPath $file; $script:removedFiles++ }
}

# ------------------------------------------------------------------------------------------------ the run

Write-Host "Reading $Sitemap"
$listed = Read-Sitemap $Sitemap
$script:helpPages = @{}
$script:sitePages = @{}
$help = [ordered]@{}
foreach ($loc in $listed.Keys) {
    $path = Site-Path $loc
    if ($null -eq $path) { continue }
    $md = Markdown-Path $path
    if (-not $md) { continue }
    if ($path.StartsWith($Prefix, [StringComparison]::OrdinalIgnoreCase)) {
        $help[$loc] = $listed[$loc]
        $script:helpPages[$md.ToLowerInvariant()] = $md
    }
    else {
        $script:sitePages[$md.ToLowerInvariant()] = $loc
    }
}
Write-Host "  $($listed.Count) pages, $($help.Count) of them help pages"
if ($help.Count -eq 0) { throw "The sitemap has no pages under /$Prefix." }

$record = Read-State $State
$images = Read-Images $ImageState
# Each image's spelling, by its lower-cased path: the recorded ones first, so a link's case can't rename a file.
$script:imageNames = @{}
foreach ($image in $images.Keys) { $script:imageNames[$image.ToLowerInvariant()] = $image }
foreach ($entry in $record.Values) { foreach ($image in $entry.Images) { if (-not $script:imageNames.ContainsKey($image.ToLowerInvariant())) { $script:imageNames[$image.ToLowerInvariant()] = $image } } }
$script:lastImageRequest = [DateTime]::MinValue
$script:folderFiles = @{}
# A sitemap missing many pages is more likely broken than the help much smaller: don't delete on its say-so.
if (-not $Full -and $record.Count -ge 100 -and $help.Count -lt 0.9 * $record.Count) {
    throw "The sitemap has $($help.Count) help pages, against $($record.Count) last time. Stopping rather than delete so many: run with -Full if that's right."
}

$toFetch = @($help.Keys | Where-Object { $Full -or -not $record.ContainsKey($_) -or $record[$_].Lastmod -ne $help[$_] })
$gone = @($record.Keys | Where-Object { -not $help.Contains($_) })
Write-Host "  $($toFetch.Count) to fetch, $($gone.Count) gone"

$added = 0; $updated = 0; $same = 0; $missing = 0; $failed = 0; $removed = 0; $sections = 0
$script:odd = [System.Collections.Generic.List[string]]::new()
$written = @{}   # repo files written or confirmed this run
$script:removedFiles = 0

if ($toFetch.Count -gt 0) {
    Connect-Mcp
    $consecutiveFailures = 0
    $count = 0
    foreach ($loc in $toFetch) {
        if ($MaxFetches -gt 0 -and $count -ge $MaxFetches) { Write-Host "  stopping after $MaxFetches (-MaxFetches)"; break }
        $count++
        if ($count % 100 -eq 0) { Write-Host "  $count of $($toFetch.Count)" }
        try { $page = Get-WholePage $loc }
        catch { $page = @{ Ok = $false; Message = $_.Exception.Message; Failed = $true } }

        if (-not $page.Ok) {
            if ($page.ContainsKey('Failed')) {
                # Couldn't ask (the service is down?): leave the page as it was, for the next run.
                $failed++
                $consecutiveFailures++
                Write-Warning "  $loc`: $($page.Message)"
                if ($consecutiveFailures -ge 10) { Write-Warning '  10 failures in a row: stopping'; break }
                continue
            }
            # The service doesn't have it (not in its index): note it, and ask again when its date changes.
            $missing++
            Write-Host "  not in the service: $loc ($($page.Message))"
            if ($record.ContainsKey($loc)) { Remove-PageFile $record[$loc].File $loc }
            $record[$loc] = @{ Lastmod = $help[$loc]; File = '-'; Images = @() }
            continue
        }
        $consecutiveFailures = 0
        if (-not $page.Id.StartsWith($Prefix, [StringComparison]::OrdinalIgnoreCase)) {
            $missing++
            Write-Host "  outside the help: $loc is $($page.Id)"
            $record[$loc] = @{ Lastmod = $help[$loc]; File = '-'; Images = @() }
            continue
        }
        if ($page.ContainsKey('Sections')) { $sections++ }

        $file = Repo-File $page.Id
        $script:pageImages = [ordered]@{}
        $markdown = Rewrite-Links $page.Markdown $page.Id
        $old = if (Test-Path -LiteralPath $file) { [IO.File]::ReadAllText($file, $utf8) } else { $null }
        if ($null -eq $old) { $added++ }
        elseif ($old -ceq $markdown) { $same++ }
        else { $updated++ }
        if ($old -cne $markdown) {
            $folder = Split-Path $file -Parent
            if ($folder) { [void](New-Item -ItemType Directory -Force -Path $folder) }
            [IO.File]::WriteAllText($file, $markdown, $utf8)
        }
        $written[$file] = $true
        # The help's start page is also the repository's README, which GitHub shows on its front page. Both are in
        # the same folder, so its links work unchanged.
        if ($Readme -and $page.Id -ieq ($Prefix + 'index.md')) {
            $readmeFolder = Split-Path $file -Parent
            $readmeFile = if ($readmeFolder) { Join-Path $readmeFolder $Readme } else { $Readme }
            $oldReadme = if (Test-Path -LiteralPath $readmeFile) { [IO.File]::ReadAllText($readmeFile, $utf8) } else { $null }
            if ($oldReadme -cne $markdown) { [IO.File]::WriteAllText($readmeFile, $markdown, $utf8) }
        }
        # A page that moved (the same address now gives a different page) leaves its old file behind.
        if ($record.ContainsKey($loc) -and $record[$loc].File -ne '-' -and $record[$loc].File -ne $file) {
            Remove-PageFile $record[$loc].File $loc
        }
        $record[$loc] = @{ Lastmod = $help[$loc]; File = $file; Images = @($script:pageImages.Keys) }
    }
}

foreach ($loc in $gone) {
    if ($record.ContainsKey($loc)) {
        Remove-PageFile $record[$loc].File $loc
        $record.Remove($loc)
        $removed++
    }
}

# The images: every one a page shows is checked (a quick question to the site for each, answered without the image
# unless it has changed); those no page shows any more are deleted.
$needed = [ordered]@{}
foreach ($loc in $record.Keys | Sort-Object { $_ } -CaseSensitive) { foreach ($image in $record[$loc].Images) { $needed[$image] = $true } }
$imageCounts = @{ added = 0; updated = 0; same = 0; missing = 0; failed = 0; removed = 0 }
foreach ($image in @($images.Keys)) {
    if ($needed.Contains($image)) { continue }
    if (Test-Path -LiteralPath $images[$image].File) { Remove-Item -LiteralPath $images[$image].File }
    $images.Remove($image)
    $imageCounts.removed++
}
if ($needed.Count -gt 0) { Write-Host "Checking $($needed.Count) image(s)" }
foreach ($image in $needed.Keys) { $imageCounts[(Sync-Image $image $images)]++ }

if ($Full -and $failed -eq 0 -and ($MaxFetches -eq 0 -or $toFetch.Count -le $MaxFetches)) {
    # Anything in the folder that no page wrote is left over: delete it.
    # File names: case matters on Linux (two files can differ only in case), not on Windows.
    $owned = [System.Collections.Generic.HashSet[string]]::new($(if ($IsWindows) { [StringComparer]::OrdinalIgnoreCase } else { [StringComparer]::Ordinal }))
    foreach ($loc in $record.Keys) { if ($record[$loc].File -ne '-') { [void]$owned.Add([IO.Path]::GetFullPath($record[$loc].File)) } }
    foreach ($name in @($Keep) + @($Readme)) { if ($name) { [void]$owned.Add([IO.Path]::GetFullPath((Join-Path $Out $name))) } }
    foreach ($image in $images.Keys) { [void]$owned.Add([IO.Path]::GetFullPath($images[$image].File)) }
    if (Test-Path $Out) {
        $root = [IO.Path]::GetFullPath($Out)
        foreach ($stray in Get-ChildItem -LiteralPath $Out -Recurse -File) {
            # Only pages and images; and leave the repository's own folders alone (.git, .github, .sync).
            $extension = $stray.Extension.ToLowerInvariant()
            if ($extension -ne '.md' -and $imageExtensions -notcontains $extension) { continue }
            $relative = [IO.Path]::GetRelativePath($root, $stray.FullName)
            if ($relative.StartsWith('.')) { continue }
            if (-not $owned.Contains($stray.FullName)) { Remove-Item -LiteralPath $stray.FullName; $script:removedFiles++ }
        }
    }
}

Write-State $State $record
Write-Images $ImageState $images

$summary = "$added added, $updated updated, $removed removed"
$details = @(
    "Help sync: $summary.",
    '',
    "Fetched $($added + $updated + $same) page(s) ($same unchanged; $sections put together from sections).",
    "$missing not available from the service; $failed failed (tried again next run); $($script:removedFiles) file(s) deleted.",
    "Images: $($imageCounts.added) added, $($imageCounts.updated) updated, $($imageCounts.removed) removed, $($imageCounts.same) unchanged, $($imageCounts.missing) not on the site, $($imageCounts.failed) failed."
)
if ($Full) { $details += 'Full refresh.' }
Write-Host ''
$details | ForEach-Object { Write-Host $_ }
if ($script:odd.Count -gt 0) {
    Write-Host ''
    Write-Host "Links that didn't resolve ($($script:odd.Count)):"
    $script:odd | Select-Object -First 50 | ForEach-Object { Write-Host "  $_" }
}
if ($MessageFile) { [IO.File]::WriteAllText($MessageFile, ($details -join "`n") + "`n", $utf8) }
if ($env:GITHUB_STEP_SUMMARY) {
    Add-Content -Path $env:GITHUB_STEP_SUMMARY -Value (($details + @('') + @($script:odd | Select-Object -First 50 | ForEach-Object { "- $_" })) -join "`n")
}
if ($failed -gt 0 -or $imageCounts.failed -gt 0) { exit 1 }
