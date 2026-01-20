$files = Get-ChildItem -Path 'c:\WSG\hg\documentation\Manual' -Filter '*.htm' -Recurse | Where-Object { (Get-Content $_.FullName -Raw) -match '\[Visual Basic\]|\[Visual&nbsp;Basic\]' }

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8

    # Pattern 1: Syntax section with uppercase CODE tags (multi-line VB code blocks)
    $pattern1 = '(?s)</CODE>\s*<BR>\s*<SPAN[^>]*class=language[^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</SPAN>\s*<BR>\s*<CODE>.*?</CODE>'

    # Pattern 2: Lowercase code tags (multi-line VB code blocks)
    $pattern2 = '(?s)</code>\s*<br>\s*<span[^>]*class=["\x27]language["\x27][^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</span>\s*<br>\s*<code>.*?</code>'

    # Pattern 3: Inline VB type signatures in property tables (single line, uppercase)
    $pattern3 = '<BR>\s*<BR>\s*<SPAN[^>]*class=language[^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</SPAN>\s*<BR>\s*<CODE>[^<]*</CODE>'

    # Pattern 4: Same as pattern 3 but with lowercase tags
    $pattern4 = '<br>\s*<br>\s*<span[^>]*class=["\x27]language["\x27][^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</span>\s*<br>\s*<code>[^<]*</code>'

    # Pattern 5: Multi-line VB in property tables (lowercase, with <a> and <br> tags inside code)
    $pattern5 = '(?s)<br>\s*<br>\s*<span[^>]*class=["\x27]language["\x27][^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</span>\s*<br>\s*<code>.*?</code>'

    # Pattern 6: Same as pattern 5 but with uppercase tags
    $pattern6 = '(?s)<BR>\s*<BR>\s*<SPAN[^>]*class=language[^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</SPAN>\s*<BR>\s*<CODE>.*?</CODE>'

    # Pattern 7: VB block with <pre><code class="language"> (no language-vbnet, just "language")
    # Matches: <span class="language">[Visual Basic]</span><br><pre><code class="language">...</code></pre>
    $pattern7 = '(?s)<span[^>]*class=["\x27]language["\x27][^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</span>\s*<br>\s*<pre><code[^>]*class=["\x27]language["\x27][^>]*>.*?</code></pre>'

    # Pattern 8: Same but with uppercase tags
    $pattern8 = '(?s)<SPAN[^>]*class=language[^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</SPAN>\s*<BR>\s*<pre><code[^>]*class=["\x27]language["\x27][^>]*>.*?</code></pre>'

    # Pattern 9: VB in table cells with <pre><code class="language"> including just before C# blocks
    # Matches: <BR><BR><SPAN class=language>[Visual&nbsp;Basic]</SPAN><BR><pre><code class="language">...</code></pre>
    $pattern9 = '(?s)<BR>\s*<BR>\s*<SPAN[^>]*class=language[^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</SPAN>\s*<BR>\s*<pre><code[^>]*class=["\x27]language["\x27][^>]*>.*?</code></pre>'

    # Pattern 10: Same but with lowercase tags
    $pattern10 = '(?s)<br>\s*<br>\s*<span[^>]*class=["\x27]language["\x27][^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</span>\s*<br>\s*<pre><code[^>]*class=["\x27]language["\x27][^>]*>.*?</code></pre>'

    # Pattern 11: XHTML style with <br /> tags (self-closing)
    # Matches: <br /><SPAN class=language>[Visual&nbsp;Basic]</SPAN><BR /><CODE>...</CODE>
    $pattern11 = '(?s)<br\s*/>\s*<SPAN[^>]*class=language[^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</SPAN>\s*<BR\s*/>\s*<CODE>.*?</CODE>'

    # Pattern 12: Same but with lowercase
    $pattern12 = '(?s)<br\s*/>\s*<span[^>]*class=["\x27]language["\x27][^>]*>\[Visual\s*(?:&nbsp;)?\s*Basic\]</span>\s*<br\s*/>\s*<code>.*?</code>'

    $newContent = $content -replace $pattern1, '</CODE>'
    $newContent = $newContent -replace $pattern2, '</code>'
    $newContent = $newContent -replace $pattern3, ''
    $newContent = $newContent -replace $pattern4, ''
    $newContent = $newContent -replace $pattern5, ''
    $newContent = $newContent -replace $pattern6, ''
    $newContent = $newContent -replace $pattern7, ''
    $newContent = $newContent -replace $pattern8, ''
    $newContent = $newContent -replace $pattern9, ''
    $newContent = $newContent -replace $pattern10, ''
    $newContent = $newContent -replace $pattern11, ''
    $newContent = $newContent -replace $pattern12, ''

    if ($newContent -ne $content) {
        Set-Content -Path $file.FullName -Value $newContent -NoNewline -Encoding UTF8
        Write-Host "Processed: $($file.FullName)"
    }
}

Write-Host 'Done processing files'
