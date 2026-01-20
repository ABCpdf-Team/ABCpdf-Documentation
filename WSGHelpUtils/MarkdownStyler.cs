using System.Text;
using System.Text.RegularExpressions;

namespace WSGHelpUtils;

/// <summary>
/// Converts HTML to styled Markdown that approximates the look and feel of the original HTML pages.
/// </summary>
public partial class MarkdownStyler
{
    private readonly StyleOptions _options;

    /// <summary>
    /// Options for styling Markdown output.
    /// </summary>
    public class StyleOptions
    {
        /// <summary>
        /// Whether to include front matter with style metadata.
        /// </summary>
        public bool IncludeFrontMatter { get; set; } = true;

        /// <summary>
        /// The name of the CSS file to reference.
        /// </summary>
        public string CssFileName { get; set; } = "abcpdf-docs.css";
    }

    public MarkdownStyler(StyleOptions? options = null)
    {
        _options = options ?? new StyleOptions();
    }

    /// <summary>
    /// Generates a CSS file for styling Markdown rendered as HTML.
    /// </summary>
    public string GenerateCss()
    {
        return @"/* ABCpdf Documentation Styles - Generated for Markdown rendering */

:root {
    --primary-color: rgb(58, 54, 73);
    --secondary-color: rgb(0, 123, 147);
    --accent-color: rgb(0, 123, 147);
    --background-color: #FFFFFF;
    --header-font: 'Trebuchet MS', Verdana, Arial, sans-serif;
    --body-font: 'Lucida Grande', Tahoma, Verdana, Arial, sans-serif;
    --code-font: 'Courier New', Courier, monospace;
    --dark-blue: rgb(0, 123, 147);
    --light-blue: rgb(153, 204, 204);
    --orange: rgb(246, 140, 88);
    --dark-grey: rgb(58, 54, 73);
    --light-grey: rgb(232, 229, 211);
    --table-bg: rgb(230, 242, 242);
}

body {
    font-family: var(--body-font);
    font-size: 9pt;
    color: var(--primary-color);
    background-color: var(--background-color);
    line-height: 1.6;
    max-width: 900px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    color: var(--dark-grey);
    font-family: var(--header-font);
    font-size: 18pt;
    font-weight: bold;
    border-bottom: 2px solid var(--light-blue);
    padding-bottom: 10px;
    margin-top: 0;
}

h2 {
    color: white;
    font-family: var(--header-font);
    font-size: 10pt;
    font-weight: bold;
    background: var(--light-blue);
    padding: 5px 10px;
    margin-top: 20px;
}

h3 {
    color: #333;
    font-family: var(--header-font);
    font-size: 12pt;
    font-weight: bold;
    margin-left: 10px;
    margin-bottom: 5px;
}

p { color: var(--primary-color); margin: 10px 0; }
strong, b { color: black; }
a { color: var(--dark-blue); text-decoration: none; }
a:hover { text-decoration: underline; }

code {
    font-family: var(--code-font);
    font-size: 9pt;
    background: #f1f5f9;
    border: 1px solid #c7cfd5;
    padding: 2px 4px;
    border-radius: 3px;
}

pre {
    background: #f1f5f9;
    border: 1px solid #c7cfd5;
    padding: 12px;
    overflow-x: auto;
    border-radius: 4px;
}

pre code { background: transparent; border: none; padding: 0; }

table {
    width: 100%;
    background-color: var(--table-bg);
    border-collapse: collapse;
    margin: 15px 0;
}

th, td {
    font-family: var(--body-font);
    font-size: 9pt;
    color: var(--primary-color);
    padding: 8px 12px;
    text-align: left;
    border: 1px solid rgba(0, 123, 147, 0.2);
}

th { background-color: rgba(0, 123, 147, 0.1); font-weight: bold; }

ul, ol { color: var(--primary-color); font-size: 9pt; line-height: 1.5; }
li { margin: 5px 0; }

blockquote {
    border-left: 3px solid var(--orange);
    margin: 15px 10px;
    padding: 10px 20px;
    background: rgba(246, 140, 88, 0.05);
}

img { max-width: 100%; height: auto; border: 1px solid #ddd; margin: 10px 0; }
hr { border: none; border-top: 1px solid var(--light-blue); margin: 20px 0; }
";
    }

    /// <summary>
    /// Generates front matter for Markdown files.
    /// </summary>
    public string GenerateFrontMatter(string title)
    {
        return $@"---
title: ""{EscapeYaml(title)}""
css: ""{_options.CssFileName}""
---

";
    }

    /// <summary>
    /// Converts HTML to styled Markdown.
    /// </summary>
    public string ConvertToStyledMarkdown(string html, string? title = null)
    {
        var sb = new StringBuilder();

        if (_options.IncludeFrontMatter && !string.IsNullOrEmpty(title))
        {
            sb.Append(GenerateFrontMatter(title));
        }

        string content = html;

        // Extract body content
        var bodyMatch = BodyContentRegex().Match(content);
        if (bodyMatch.Success)
        {
            content = bodyMatch.Groups[1].Value;
        }

        // Process content-section divs
        content = ContentSectionRegex().Replace(content, "$1");

        // Convert headers
        content = H1Regex().Replace(content, m => $"\n# {CleanText(m.Groups[1].Value)}\n\n");
        content = H2Regex().Replace(content, m => $"\n## {CleanText(m.Groups[1].Value)}\n\n");
        content = H3Regex().Replace(content, m => $"\n### {CleanText(m.Groups[1].Value)}\n\n");

        // Remove VB code blocks
        content = VbPreCodeRegex().Replace(content, "");
        content = VbLabeledCodeBlockRegex().Replace(content, "");

        // Convert pre+code blocks
        content = PreCodeRegex().Replace(content, m =>
        {
            string lang = m.Groups[1].Success ? m.Groups[1].Value : "";
            string code = CleanCodeContent(m.Groups[2].Value);
            return $"\n```{lang}\n{code}\n```\n\n";
        });

        // Strip paragraph tags around syntax blocks
        content = ParagraphWithSyntaxRegex().Replace(content, "$1");

        // Convert syntax blocks (skip VB)
        content = SyntaxBlockRegex().Replace(content, m =>
        {
            string lang = m.Groups[1].Value;
            string code = m.Groups[2].Value;

            if (lang.Equals("[VB]", StringComparison.OrdinalIgnoreCase) ||
                lang.StartsWith("[Visual", StringComparison.OrdinalIgnoreCase))
                return "";

            string langHint = lang.ToUpperInvariant() switch
            {
                "[C#]" => "csharp",
                "[JAVASCRIPT]" => "javascript",
                "[PYTHON]" => "python",
                _ => ""
            };

            code = BrRegex().Replace(code, "\n");
            code = CleanCodeContent(code).Trim();

            return $"\n**{lang}**\n\n```{langHint}\n{code}\n```\n\n";
        });

        // Convert remaining inline code
        content = InlineCodeRegex().Replace(content, m =>
        {
            string codeContent = m.Groups[1].Value;
            if (BrRegex().IsMatch(codeContent))
            {
                string cleaned = BrRegex().Replace(codeContent, "\n");
                cleaned = CleanCodeContent(cleaned);
                return $"\n```\n{cleaned.Trim()}\n```\n";
            }
            return $"`{CleanText(codeContent)}`";
        });

        // Convert tables
        content = ConvertTables(content);

        // Convert links
        content = LinkRegex().Replace(content, m =>
        {
            string href = m.Groups[1].Value;
            string text = CleanText(m.Groups[2].Value);
            href = HtmExtensionRegex().Replace(href, ".md");
            return $"[{text}]({href})";
        });

        // Convert images
        content = ImgRegex().Replace(content, m =>
        {
            string src = m.Groups[1].Value;
            string alt = m.Groups[2].Success ? CleanText(m.Groups[2].Value) : "";
            return $"![{alt}]({src})";
        });

        // Convert paragraphs
        content = ParagraphRegex().Replace(content, m => $"{CleanText(m.Groups[1].Value)}\n\n");

        // Convert br tags
        content = BrRegex().Replace(content, "  \n");

        // Convert formatting
        content = StrongRegex().Replace(content, m => $"**{CleanText(m.Groups[1].Value)}**");
        content = EmRegex().Replace(content, m => $"*{CleanText(m.Groups[1].Value)}*");
        content = LanguageSpanRegex().Replace(content, m =>
        {
            string label = CleanText(m.Groups[1].Value);
            // Skip VB/Visual Basic labels
            if (label.Equals("[VB]", StringComparison.OrdinalIgnoreCase) ||
                label.StartsWith("[Visual", StringComparison.OrdinalIgnoreCase))
                return "";
            return $"**{label}**\n";
        });

        // Convert lists
        content = ConvertLists(content);

        // Clean up whitespace
        content = MultipleNewlinesRegex().Replace(content, "\n\n");
        content = content.Trim();

        sb.Append(content);
        return sb.ToString();
    }

    private string ConvertTables(string content)
    {
        return TableRegex().Replace(content, m =>
        {
            var sb = new StringBuilder("\n");
            var rows = TableRowRegex().Matches(m.Value);
            if (rows.Count == 0) return m.Value;

            bool headerDone = false;
            foreach (Match row in rows)
            {
                var cells = TableCellRegex().Matches(row.Value);
                if (cells.Count == 0) continue;

                sb.Append("| ");
                foreach (Match cell in cells)
                {
                    string cellContent = CleanText(cell.Groups[1].Value).Replace("|", "\\|");
                    sb.Append(cellContent);
                    sb.Append(" | ");
                }
                sb.AppendLine();

                if (!headerDone)
                {
                    sb.Append("|");
                    for (int i = 0; i < cells.Count; i++)
                        sb.Append(" --- |");
                    sb.AppendLine();
                    headerDone = true;
                }
            }
            sb.AppendLine();
            return sb.ToString();
        });
    }

    private string ConvertLists(string content)
    {
        content = UlRegex().Replace(content, m =>
        {
            var items = LiRegex().Matches(m.Groups[1].Value);
            var sb = new StringBuilder("\n");
            foreach (Match item in items)
                sb.AppendLine($"- {CleanText(item.Groups[1].Value)}");
            sb.AppendLine();
            return sb.ToString();
        });

        content = OlRegex().Replace(content, m =>
        {
            var items = LiRegex().Matches(m.Groups[1].Value);
            var sb = new StringBuilder("\n");
            int num = 1;
            foreach (Match item in items)
                sb.AppendLine($"{num++}. {CleanText(item.Groups[1].Value)}");
            sb.AppendLine();
            return sb.ToString();
        });

        return content;
    }

    private static string CleanText(string text)
    {
        text = System.Net.WebUtility.HtmlDecode(text);
        text = HtmlTagRegex().Replace(text, "");
        text = WhitespaceRegex().Replace(text, " ");
        return text.Trim();
    }

    private static string CleanCodeContent(string code)
    {
        code = System.Net.WebUtility.HtmlDecode(code);
        code = HtmlTagRegex().Replace(code, "");
        return code.Trim();
    }

    private static string EscapeYaml(string text) => text.Replace("\"", "\\\"").Replace("\n", " ");

    #region Regex patterns

    [GeneratedRegex(@"<body[^>]*>(.*?)</body>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex BodyContentRegex();

    [GeneratedRegex(@"<div[^>]*class=""content-section""[^>]*>(.*?)</div>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex ContentSectionRegex();

    [GeneratedRegex(@"<h1[^>]*>(.*?)</h1>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex H1Regex();

    [GeneratedRegex(@"<h2[^>]*>(.*?)</h2>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex H2Regex();

    [GeneratedRegex(@"<h3[^>]*>(.*?)</h3>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex H3Regex();

    [GeneratedRegex(@"<pre[^>]*>\s*<code\s+class=""language-vb(?:net)?""[^>]*>.*?</code>\s*</pre>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex VbPreCodeRegex();

    [GeneratedRegex(@"<span[^>]*class\s*=\s*[""']?language[""']?[^>]*>\[(?:VB|Visual\s*Basic)\]</span>\s*(?:<br\s*/?>)?\s*(?:</?p[^>]*>\s*)*<pre[^>]*>\s*<code[^>]*>.*?</code>\s*</pre>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex VbLabeledCodeBlockRegex();

    [GeneratedRegex(@"<pre[^>]*>\s*<code(?:\s+class=""language-(\w+)"")?[^>]*>(.*?)</code>\s*</pre>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex PreCodeRegex();

    [GeneratedRegex(@"<p[^>]*>(\s*<span[^>]*class\s*=\s*[""']?language[""']?[^>]*>.*?</code>\s*)</p>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex ParagraphWithSyntaxRegex();

    [GeneratedRegex(@"<span[^>]*class\s*=\s*[""']?language[""']?[^>]*>(\[[\w#]+\])</span>\s*(?:<br\s*/?>)?\s*<code[^>]*>(.*?)</code>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex SyntaxBlockRegex();

    [GeneratedRegex(@"<code[^>]*>(.*?)</code>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex InlineCodeRegex();

    [GeneratedRegex(@"<table[^>]*>.*?</table>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex TableRegex();

    [GeneratedRegex(@"<tr[^>]*>.*?</tr>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex TableRowRegex();

    [GeneratedRegex(@"<t[dh][^>]*>(.*?)</t[dh]>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex TableCellRegex();

    [GeneratedRegex(@"<a[^>]*href=""([^""]*)""[^>]*>(.*?)</a>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex LinkRegex();

    [GeneratedRegex(@"<img[^>]*src=""([^""]*)""(?:[^>]*alt=""([^""]*)"")?[^>]*/?>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex ImgRegex();

    [GeneratedRegex(@"<p[^>]*>(.*?)</p>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex ParagraphRegex();

    [GeneratedRegex(@"<br\s*/?>", RegexOptions.IgnoreCase)]
    private static partial Regex BrRegex();

    [GeneratedRegex(@"<(?:strong|b)[^>]*>(.*?)</(?:strong|b)>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex StrongRegex();

    [GeneratedRegex(@"<(?:em|i)[^>]*>(.*?)</(?:em|i)>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex EmRegex();

    [GeneratedRegex(@"<span[^>]*class=""language""[^>]*>(.*?)</span>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex LanguageSpanRegex();

    [GeneratedRegex(@"<ul[^>]*>(.*?)</ul>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex UlRegex();

    [GeneratedRegex(@"<ol[^>]*>(.*?)</ol>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex OlRegex();

    [GeneratedRegex(@"<li[^>]*>(.*?)</li>", RegexOptions.Singleline | RegexOptions.IgnoreCase)]
    private static partial Regex LiRegex();

    [GeneratedRegex(@"\.htm[l]?", RegexOptions.IgnoreCase)]
    private static partial Regex HtmExtensionRegex();

    [GeneratedRegex(@"<[^>]+>")]
    private static partial Regex HtmlTagRegex();

    [GeneratedRegex(@"\s+")]
    private static partial Regex WhitespaceRegex();

    [GeneratedRegex(@"(\n\s*){3,}")]
    private static partial Regex MultipleNewlinesRegex();

    #endregion
}
