<#
.SYNOPSIS
Brings the Markdown copy of the ABCpdf .NET help in this repository up to date with the help on websupergoo.com.

.DESCRIPTION
Asks the site's documentation service (the MCP service's /api/pages) for its list of pages, each with a SHA-256 of
its Markdown, and fetches (/api/page) each help page - those under -Prefix - whose hash differs from the one recorded,
or that is new. Pages gone from the list are deleted. The hashes come from the same index the pages do, so a page
is fetched exactly when its Markdown has changed: an edit to the help, or a change to the conversion.

What was fetched is recorded in -State (id, hash, file, images). The hash recorded is of what was downloaded, so if
the service moves to a new index during a run, a page that changed is simply fetched again next time.

Links between help pages stay relative, so they work on GitHub. The images the pages show are copied from the site
too: each run asks the site for each one only if it has changed since the date recorded in -ImageState (a 304
answer carries no image), and deletes those no page shows any more. Links to pages the service doesn't have (help
pages the help's contents doesn't list, such as sample projects' source) and to the rest of the site go to
https://www.websupergoo.com.

With -Full, every page is fetched again and any stray .md file or image in -Out is deleted. The repository's own
files (-Keep: README.md and LICENSE.md, in any case) are never written or deleted.

Runs with PowerShell 7 (pwsh), on Windows or Linux, from the repository's top folder.

.EXAMPLE
pwsh ./.github/scripts/sync-help.ps1
pwsh ./.github/scripts/sync-help.ps1 -Full
#>
[CmdletBinding()]
param(
    [string] $Site = 'https://www.websupergoo.com',
    [string] $Api = '',                     # the service's API; default: $Site/mcp/api
    [string] $ImageSite = '',               # where the images are fetched from; default: $Site
    [string] $Prefix = 'helppdfnet/source/', # the help's folder on the site
    [string] $Out = '.',                    # where the Markdown goes in the repository
    [string] $Readme = '',                  # a copy of the help's start page, for GitHub to show (none by default)
    [string[]] $Keep = @('README.md', 'LICENSE.md'),  # the repository's own files in -Out: never written or deleted (any case)
    [string] $State = '.sync/pages.tsv',
    [string] $ImageState = '.sync/help-images.tsv',
    [switch] $Full,                         # fetch every page again, and delete stray files
    [int] $DelayMs = 1100,                  # between page requests: the service allows 60 a minute
    [int] $ImageDelayMs = 100,              # between image requests (to the site itself, not the service)
    [int] $MaxFetches = 0,                  # stop after this many pages (0: no limit), e.g. to try it out
    [string] $MessageFile = ''              # write a commit message here
)

Set-StrictMode -Version 3.0
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$Site = $Site.TrimEnd('/')
if (-not $Api) { $Api = "$Site/mcp/api" }
$Api = $Api.TrimEnd('/')
if (-not $ImageSite) { $ImageSite = $Site }
$ImageSite = $ImageSite.TrimEnd('/')
if (-not $Prefix.EndsWith('/')) { $Prefix += '/' }
$utf8 = [System.Text.UTF8Encoding]::new($false)
$imageExtensions = @('.png', '.gif', '.jpg', '.jpeg', '.svg', '.webp', '.bmp', '.ico')

# ------------------------------------------------------------------------------------------------ the service

$script:lastRequest = [DateTime]::MinValue

# A GET from the service: the response, or $null for a 404. Waits between requests, and when the service says to
# slow down; tries again after a failure (three tries in all). Compressed answers are unpacked as they arrive.
function Invoke-Api([string] $path) {
    for ($attempt = 1; ; $attempt++) {
        $wait = $DelayMs - ([DateTime]::UtcNow - $script:lastRequest).TotalMilliseconds
        if ($wait -gt 0) { Start-Sleep -Milliseconds ([int]$wait) }
        $script:lastRequest = [DateTime]::UtcNow
        try {
            $response = Invoke-WebRequest -Uri "$Api/$path" -UseBasicParsing -TimeoutSec 300 -SkipHttpErrorCheck
        }
        catch {
            if ($attempt -ge 3) { throw }
            Write-Warning "  $path failed ($($_.Exception.Message)); trying again"
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
        if ($status -eq 404) { return $null }
        if ($status -ge 500 -and $attempt -lt 3) {
            Write-Warning "  $path answered $status; trying again"
            Start-Sleep -Seconds (5 * $attempt)
            continue
        }
        if ($status -lt 200 -or $status -ge 300) { throw "The service answered $status to $path." }
        return $response
    }
}

# SHA-256 of text's UTF-8 bytes, as lower-case hex: as the service works out its hashes.
function Hash-Text([string] $text) {
    return [Convert]::ToHexString([System.Security.Cryptography.SHA256]::HashData($utf8.GetBytes($text))).ToLowerInvariant()
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

# Where one link on a page should point in the repository. $script:helpPages: every help page in the list, by its
# lower-cased id (to correct the case of a link: the site doesn't mind, GitHub does). $script:sitePages: every other
# page in the list (the rest of the site), its address by its lower-cased id.
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
        # Not in the list, so not in the service's index: a help page the help's contents doesn't list (a sample
        # project's source, an obsolete member) or some other site page. Linked to the page on the site.
        $stem = $resolved.Substring(0, $resolved.Length - 3)
        if ($stem -ieq 'index' -or $stem.EndsWith('/index', [StringComparison]::OrdinalIgnoreCase)) { $stem = $stem.Substring(0, $stem.Length - 5) + 'default' }
        if ($resolved.StartsWith($Prefix, [StringComparison]::OrdinalIgnoreCase)) { $script:liveLinks++ }
        else { $script:odd.Add("$pageId -> $target (not in the list of pages: linked to $stem.htm on the site)") }
        return (Escape-Link ("$Site/" + $stem + '.htm') $angle) + $tail
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

# Page id -> @{ Hash; File; Images } (Images: the help images the page shows, by their paths on the site).
function Read-State([string] $path) {
    $record = @{}
    if (-not (Test-Path $path)) { return $record }
    foreach ($line in [IO.File]::ReadAllLines($path, $utf8) | Select-Object -Skip 1) {
        $cells = $line -split "`t"
        if ($cells.Count -lt 3) { continue }
        $images = if ($cells.Count -ge 4 -and $cells[3]) { @($cells[3] -split '\|') } else { @() }
        $record[$cells[0]] = @{ Hash = $cells[1]; File = $cells[2]; Images = $images }
    }
    return $record
}

function Write-State([string] $path, $record) {
    $folder = Split-Path $path -Parent
    if ($folder) { [void](New-Item -ItemType Directory -Force -Path $folder) }
    $lines = [System.Collections.Generic.List[string]]::new()
    $lines.Add("id`tsha256`tfile`timages")
    foreach ($id in $record.Keys | Sort-Object { $_ } -CaseSensitive) {
        $images = @($record[$id].Images) -join '|'
        $lines.Add("$id`t$($record[$id].Hash)`t$($record[$id].File)`t$images")
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

# Whether a file is one of the repository's own (-Keep), which the sync never writes or deletes. Any case: GitHub
# shows License.md as the licence as readily as LICENSE.md.
function Is-Kept([string] $file) {
    $full = [IO.Path]::GetFullPath($file)
    foreach ($name in $Keep) {
        if ($name -and $full -ieq [IO.Path]::GetFullPath((Join-Path $Out $name))) { return $true }
    }
    return $false
}

# Deletes a page's file.
function Remove-PageFile([string] $file) {
    if ($file -and $file -ne '-' -and (Test-Path -LiteralPath $file)) { Remove-Item -LiteralPath $file; $script:removedFiles++ }
}

# ------------------------------------------------------------------------------------------------ the run

Write-Host "Reading $Api/pages"
$response = Invoke-Api 'pages'
if ($null -eq $response) { throw "The service has no list of pages at $Api/pages." }
$list = $response.Content | ConvertFrom-Json
# Help pages (under -Prefix): id -> hash. The rest of the site: id -> address, for links to it.
$listed = [ordered]@{}
$script:helpPages = @{}
$script:sitePages = @{}
foreach ($page in $list.pages) {
    if ($page.id.StartsWith($Prefix, [StringComparison]::OrdinalIgnoreCase)) {
        $listed[$page.id] = $page.sha256
        $script:helpPages[$page.id.ToLowerInvariant()] = $page.id
    }
    else {
        $script:sitePages[$page.id.ToLowerInvariant()] = $page.url
    }
}
Write-Host "  $($list.count) pages (index built $($list.built)), $($listed.Count) of them help pages"
if ($listed.Count -eq 0) { throw "The list has no pages under $Prefix." }

$record = Read-State $State
$images = Read-Images $ImageState
# Each image's spelling, by its lower-cased path: the recorded ones first, so a link's case can't rename a file.
$script:imageNames = @{}
foreach ($image in $images.Keys) { $script:imageNames[$image.ToLowerInvariant()] = $image }
foreach ($entry in $record.Values) { foreach ($image in $entry.Images) { if (-not $script:imageNames.ContainsKey($image.ToLowerInvariant())) { $script:imageNames[$image.ToLowerInvariant()] = $image } } }
$script:lastImageRequest = [DateTime]::MinValue
$script:folderFiles = @{}

# A list missing many pages is more likely broken than the help much smaller: don't delete on its say-so.
if (-not $Full -and $record.Count -ge 100 -and $listed.Count -lt 0.9 * $record.Count) {
    throw "The list has $($listed.Count) help pages, against $($record.Count) last time. Stopping rather than delete so many: run with -Full if that's right."
}

$toFetch = @($listed.Keys | Where-Object { $Full -or -not $record.ContainsKey($_) -or $record[$_].Hash -ne $listed[$_] })
$gone = @($record.Keys | Where-Object { -not $listed.Contains($_) })
Write-Host "  $($toFetch.Count) to fetch, $($gone.Count) gone"

$added = 0; $updated = 0; $same = 0; $failed = 0; $vanished = 0; $removed = 0
$script:odd = [System.Collections.Generic.List[string]]::new()
$script:removedFiles = 0
$script:liveLinks = 0

$count = 0
$consecutiveFailures = 0
foreach ($id in $toFetch) {
    if ($MaxFetches -gt 0 -and $count -ge $MaxFetches) { Write-Host "  stopping after $MaxFetches (-MaxFetches)"; break }
    $count++
    if ($count % 100 -eq 0) { Write-Host "  $count of $($toFetch.Count)" }
    try { $response = Invoke-Api ('page?id=' + [Uri]::EscapeDataString($id)) }
    catch {
        # Couldn't ask (the service is down?): leave the page as it was, for the next run.
        $failed++
        $consecutiveFailures++
        Write-Warning "  $id`: $($_.Exception.Message)"
        if ($consecutiveFailures -ge 10) { Write-Warning '  10 failures in a row: stopping'; break }
        continue
    }
    $consecutiveFailures = 0
    if ($null -eq $response) {
        # Gone since the list was made (a new index): it will be gone from the next list too.
        $vanished++
        continue
    }
    $raw = [string]$response.Content
    $hash = Hash-Text $raw

    $file = Repo-File $id
    if (Is-Kept $file) {
        $script:odd.Add("$id would be written over $file, one of the repository's own files: left out")
        continue
    }
    $script:pageImages = [ordered]@{}
    $markdown = Rewrite-Links ($raw -replace "`r`n", "`n") $id
    $old = if (Test-Path -LiteralPath $file) { [IO.File]::ReadAllText($file, $utf8) } else { $null }
    if ($null -eq $old) { $added++ }
    elseif ($old -ceq $markdown) { $same++ }
    else { $updated++ }
    if ($old -cne $markdown) {
        $folder = Split-Path $file -Parent
        if ($folder) { [void](New-Item -ItemType Directory -Force -Path $folder) }
        [IO.File]::WriteAllText($file, $markdown, $utf8)
    }
    # The help's start page is also the repository's README, which GitHub shows on its front page. Both are in
    # the same folder, so its links work unchanged.
    if ($Readme -and $id -ieq ($Prefix + 'index.md')) {
        $readmeFolder = Split-Path $file -Parent
        $readmeFile = if ($readmeFolder) { Join-Path $readmeFolder $Readme } else { $Readme }
        $oldReadme = if (Test-Path -LiteralPath $readmeFile) { [IO.File]::ReadAllText($readmeFile, $utf8) } else { $null }
        if ($oldReadme -cne $markdown) { [IO.File]::WriteAllText($readmeFile, $markdown, $utf8) }
    }
    # The hash of what came, not the list's: if they differ, the service moved to a new index meanwhile, and the
    # page is fetched again next time.
    $record[$id] = @{ Hash = $hash; File = $file; Images = @($script:pageImages.Keys) }
}

foreach ($id in $gone) {
    Remove-PageFile $record[$id].File
    $record.Remove($id)
    $removed++
}

# The images: every one a page shows is checked (a quick question to the site for each, answered without the image
# unless it has changed); those no page shows any more are deleted.
$needed = [ordered]@{}
foreach ($id in $record.Keys | Sort-Object { $_ } -CaseSensitive) { foreach ($image in $record[$id].Images) { $needed[$image] = $true } }
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
    # Anything in the folder that no page or image wrote is left over: delete it.
    # File names: case matters on Linux (two files can differ only in case), not on Windows.
    $owned = [System.Collections.Generic.HashSet[string]]::new($(if ($IsWindows) { [StringComparer]::OrdinalIgnoreCase } else { [StringComparer]::Ordinal }))
    foreach ($id in $record.Keys) { [void]$owned.Add([IO.Path]::GetFullPath($record[$id].File)) }
    if ($Readme) { [void]$owned.Add([IO.Path]::GetFullPath((Join-Path $Out $Readme))) }
    foreach ($image in $images.Keys) { [void]$owned.Add([IO.Path]::GetFullPath($images[$image].File)) }
    if (Test-Path $Out) {
        $root = [IO.Path]::GetFullPath($Out)
        foreach ($stray in Get-ChildItem -LiteralPath $Out -Recurse -File) {
            # Only pages and images; and leave the repository's own folders alone (.git, .github, .sync).
            $extension = $stray.Extension.ToLowerInvariant()
            if ($extension -ne '.md' -and $imageExtensions -notcontains $extension) { continue }
            $relative = [IO.Path]::GetRelativePath($root, $stray.FullName)
            if ($relative.StartsWith('.') -or (Is-Kept $stray.FullName)) { continue }
            if (-not $owned.Contains($stray.FullName)) { Remove-Item -LiteralPath $stray.FullName; $script:removedFiles++ }
        }
    }
}

Write-State $State $record
Write-Images $ImageState $images

$details = @(
    "Help sync: $added added, $updated updated, $removed removed.",
    '',
    "Fetched $($added + $updated + $same) page(s) ($same unchanged); $failed failed (tried again next run); $vanished gone meanwhile; $($script:removedFiles) file(s) deleted.",
    "Images: $($imageCounts.added) added, $($imageCounts.updated) updated, $($imageCounts.removed) removed, $($imageCounts.same) unchanged, $($imageCounts.missing) not on the site, $($imageCounts.failed) failed.",
    "Links to help pages the service doesn't have (linked to the site): $($script:liveLinks)."
)
if ($Full) { $details += 'Full refresh.' }
Write-Host ''
$details | ForEach-Object { Write-Host $_ }
if ($script:odd.Count -gt 0) {
    Write-Host ''
    Write-Host "Links to check ($($script:odd.Count)):"
    $script:odd | Select-Object -First 50 | ForEach-Object { Write-Host "  $_" }
}
if ($MessageFile) { [IO.File]::WriteAllText($MessageFile, ($details -join "`n") + "`n", $utf8) }
if ($env:GITHUB_STEP_SUMMARY) {
    Add-Content -Path $env:GITHUB_STEP_SUMMARY -Value (($details + @('') + @($script:odd | Select-Object -First 50 | ForEach-Object { "- $_" })) -join "`n")
}
if ($failed -gt 0 -or $imageCounts.failed -gt 0) { exit 1 }
