using HtmlAgilityPack;
using System.Text;
using System.Text.RegularExpressions;

namespace WSGHelpUtils;

/// <summary>
/// Cleans and standardizes HTML files for easier conversion to Markdown.
/// This class transforms complex/legacy HTML into a consistent, simplified format
/// while preserving the visual appearance of the content.
/// </summary>
public partial class HtmlCleaner
{
    /// <summary>
    /// Options for HTML cleaning operations.
    /// </summary>
    public class CleanerOptions
    {
        /// <summary>
        /// Remove inline styles and convert to semantic elements where possible.
        /// </summary>
        public bool RemoveInlineStyles { get; set; } = true;

        /// <summary>
        /// Normalize whitespace and remove excessive blank lines.
        /// </summary>
        public bool NormalizeWhitespace { get; set; } = true;

        /// <summary>
        /// Convert deprecated HTML elements to modern equivalents.
        /// </summary>
        public bool ModernizeElements { get; set; } = true;

        /// <summary>
        /// Remove Prism.js script and style references (keep code blocks).
        /// </summary>
        public bool RemovePrismReferences { get; set; } = false;

        /// <summary>
        /// Remove layout tables but preserve data tables.
        /// </summary>
        public bool RemoveLayoutTables { get; set; } = true;

        /// <summary>
        /// Convert font tags to semantic elements.
        /// </summary>
        public bool ConvertFontTags { get; set; } = true;

        /// <summary>
        /// Remove empty elements that don't contribute to content.
        /// </summary>
        public bool RemoveEmptyElements { get; set; } = true;

        /// <summary>
        /// Remove decorative images (spacers, lines, blobs).
        /// </summary>
        public bool RemoveDecorativeImages { get; set; } = true;

        /// <summary>
        /// Remove legacy HTML attributes (bgcolor, cellspacing, etc.).
        /// </summary>
        public bool RemoveLegacyAttributes { get; set; } = true;

        /// <summary>
        /// Remove GENERATOR and other non-essential meta tags.
        /// </summary>
        public bool RemoveGeneratorMeta { get; set; } = true;

        /// <summary>
        /// Preserve these CSS classes when cleaning.
        /// </summary>
        public HashSet<string> PreserveClasses { get; set; } = new(StringComparer.OrdinalIgnoreCase)
        {
            "pageheader", "sectheader", "oldsectheader", "language",
            "wsgtable", "note", "backgrounder", "example", "example-landscape",
            "keyword", "smallprint"
        };

        /// <summary>
        /// Decorative image filename patterns to remove.
        /// </summary>
        public HashSet<string> DecorativeImagePatterns { get; set; } = new(StringComparer.OrdinalIgnoreCase)
        {
            "goo.gif", "steel-pin.gif", "steel-blob", "steel-line"
        };
    }

    private readonly CleanerOptions _options;
    private readonly Action<string>? _logger;

    /// <summary>
    /// Creates a new HTML cleaner with the specified options.
    /// </summary>
    public HtmlCleaner(CleanerOptions? options = null, Action<string>? logger = null)
    {
        _options = options ?? new CleanerOptions();
        _logger = logger;
    }

    /// <summary>
    /// Cleans the provided HTML content and returns standardized HTML.
    /// </summary>
    public string Clean(string html, string? sourceFilePath = null)
    {
        ArgumentException.ThrowIfNullOrWhiteSpace(html);

        _logger?.Invoke($"Cleaning HTML{(sourceFilePath != null ? $": {Path.GetFileName(sourceFilePath)}" : "")}");

        var doc = new HtmlDocument();
        doc.OptionOutputOriginalCase = false; // Normalize to lowercase
        doc.OptionWriteEmptyNodes = true;
        doc.LoadHtml(html);

        // Phase 1: Remove unwanted elements
        if (_options.RemoveGeneratorMeta)
            RemoveGeneratorMeta(doc);

        if (_options.RemovePrismReferences)
            RemovePrismReferences(doc);

        if (_options.RemoveDecorativeImages)
            RemoveDecorativeImages(doc);

        // Phase 2: Clean up attributes
        if (_options.RemoveLegacyAttributes)
            RemoveLegacyAttributes(doc);

        if (_options.RemoveInlineStyles)
            RemoveInlineStyles(doc);

        // Phase 3: Transform structure
        if (_options.ConvertFontTags)
            ConvertFontTags(doc);

        if (_options.ModernizeElements)
            ModernizeElements(doc);

        if (_options.RemoveLayoutTables)
            RemoveLayoutTables(doc);

        // Phase 3b: Clean up code blocks
        CleanCodeBlocks(doc);

        // Phase 4: Clean up empty elements
        if (_options.RemoveEmptyElements)
            RemoveEmptyElements(doc);

        // Phase 5: Final cleanup
        string result = GetCleanedHtml(doc);

        if (_options.NormalizeWhitespace)
            result = NormalizeWhitespace(result);

        return result;
    }

    /// <summary>
    /// Cleans an HTML file and writes the result to the output path.
    /// </summary>
    public async Task CleanFileAsync(string inputPath, string outputPath, CancellationToken cancellationToken = default)
    {
        string html = await File.ReadAllTextAsync(inputPath, cancellationToken);
        string cleaned = Clean(html, inputPath);

        string? outputDir = Path.GetDirectoryName(outputPath);
        if (!string.IsNullOrEmpty(outputDir))
            Directory.CreateDirectory(outputDir);

        await File.WriteAllTextAsync(outputPath, cleaned, cancellationToken);
    }

    #region Phase 1: Remove unwanted elements

    private void RemoveGeneratorMeta(HtmlDocument doc)
    {
        var generatorMetas = doc.DocumentNode.SelectNodes("//meta[@name='GENERATOR' or @name='generator']");
        if (generatorMetas != null)
        {
            foreach (var meta in generatorMetas.ToList())
                meta.Remove();
        }
    }

    private void RemovePrismReferences(HtmlDocument doc)
    {
        // Remove prism.js and prism.css references
        var scripts = doc.DocumentNode.SelectNodes("//script[contains(@src, 'prism')]");
        var links = doc.DocumentNode.SelectNodes("//link[contains(@href, 'prism')]");

        if (scripts != null)
            foreach (var script in scripts.ToList())
                script.Remove();

        if (links != null)
            foreach (var link in links.ToList())
                link.Remove();
    }

    private void RemoveDecorativeImages(HtmlDocument doc)
    {
        var images = doc.DocumentNode.SelectNodes("//img[@src]");
        if (images == null) return;

        foreach (var img in images.ToList())
        {
            string src = img.GetAttributeValue("src", "");
            bool isDecorative = _options.DecorativeImagePatterns
                .Any(pattern => src.Contains(pattern, StringComparison.OrdinalIgnoreCase));

            if (isDecorative)
            {
                // Check if image has meaningful alt text we should preserve
                string alt = img.GetAttributeValue("alt", "").Trim();
                if (!string.IsNullOrEmpty(alt) && alt != "&nbsp;" && !alt.StartsWith("Throws", StringComparison.OrdinalIgnoreCase))
                {
                    // Replace with a span containing the alt text
                    var span = doc.CreateElement("span");
                    span.SetAttributeValue("class", "icon-placeholder");
                    span.InnerHtml = $"[{alt}]";
                    img.ParentNode.ReplaceChild(span, img);
                }
                else
                {
                    img.Remove();
                }
            }
        }
    }

    #endregion

    #region Phase 2: Clean up attributes

    private static readonly HashSet<string> LegacyAttributes = new(StringComparer.OrdinalIgnoreCase)
    {
        "bgcolor", "background", "cellspacing", "cellpadding", "border",
        "bordercolor", "valign", "align", "width", "height", "nowrap",
        "frameborder", "marginwidth", "marginheight", "scrolling",
        "hspace", "vspace", "alink", "vlink", "link", "text"
    };

    private void RemoveLegacyAttributes(HtmlDocument doc)
    {
        var allElements = doc.DocumentNode.SelectNodes("//*");
        if (allElements == null) return;

        foreach (var element in allElements)
        {
            var attributesToRemove = element.Attributes
                .Where(a => LegacyAttributes.Contains(a.Name))
                .ToList();

            foreach (var attr in attributesToRemove)
                element.Attributes.Remove(attr);
        }
    }

    private void RemoveInlineStyles(HtmlDocument doc)
    {
        var elementsWithStyle = doc.DocumentNode.SelectNodes("//*[@style]");
        if (elementsWithStyle == null) return;

        foreach (var element in elementsWithStyle)
            element.Attributes.Remove("style");
    }

    #endregion

    #region Phase 3: Transform structure

    private void ConvertFontTags(HtmlDocument doc)
    {
        var fontTags = doc.DocumentNode.SelectNodes("//font");
        if (fontTags == null) return;

        foreach (var font in fontTags.ToList())
        {
            // Replace font with span, preserving content
            var span = doc.CreateElement("span");
            span.InnerHtml = font.InnerHtml;

            // Preserve class if present
            string className = font.GetAttributeValue("class", "");
            if (!string.IsNullOrEmpty(className))
                span.SetAttributeValue("class", className);

            font.ParentNode.ReplaceChild(span, font);
        }
    }

    private void ModernizeElements(HtmlDocument doc)
    {
        // Replace <b> with <strong>
        ReplaceElements(doc, "//b", "strong");

        // Replace <i> with <em>
        ReplaceElements(doc, "//i", "em");

        // Replace <tt> with <code>
        ReplaceElements(doc, "//tt", "code");

        // Replace <strike> and <s> with <del>
        ReplaceElements(doc, "//strike", "del");
        ReplaceElements(doc, "//s", "del");

        // Replace <center> with <div>
        ReplaceElements(doc, "//center", "div");

        // Replace <u> with <span> (underline has no semantic meaning)
        ReplaceElements(doc, "//u", "span");
    }

    private static void ReplaceElements(HtmlDocument doc, string xpath, string newTagName)
    {
        var elements = doc.DocumentNode.SelectNodes(xpath);
        if (elements == null) return;

        foreach (var element in elements.ToList())
        {
            var newElement = doc.CreateElement(newTagName);
            newElement.InnerHtml = element.InnerHtml;

            // Copy preserved attributes
            foreach (var attr in element.Attributes)
                newElement.SetAttributeValue(attr.Name, attr.Value);

            element.ParentNode.ReplaceChild(newElement, element);
        }
    }

    private void RemoveLayoutTables(HtmlDocument doc)
    {
        // Process tables from innermost to outermost to handle nesting
        // Keep track of processed tables to avoid duplication
        var processedTables = new HashSet<HtmlNode>();
        
        bool changed = true;
        int maxIterations = 10;
        
        while (changed && maxIterations-- > 0)
        {
            changed = false;
            
            // Find leaf tables (tables that don't contain other tables, except wsgtable)
            var tables = doc.DocumentNode.SelectNodes("//table");
            if (tables == null) break;

            foreach (var table in tables.ToList())
            {
                if (processedTables.Contains(table))
                    continue;
                    
                // Check if this is a data table (has wsgtable class)
                if (IsDataTable(table))
                {
                    CleanDataTable(table);
                    processedTables.Add(table);
                    continue;
                }
                
                // Check if this table contains unprocessed layout tables
                var innerTables = table.SelectNodes(".//table");
                bool hasUnprocessedLayoutTables = false;
                if (innerTables != null)
                {
                    foreach (var innerTable in innerTables)
                    {
                        if (!processedTables.Contains(innerTable) && !IsDataTable(innerTable))
                        {
                            hasUnprocessedLayoutTables = true;
                            break;
                        }
                    }
                }
                
                // Only process this table if all inner layout tables have been processed
                if (hasUnprocessedLayoutTables)
                    continue;

                // This is a layout table with no unprocessed inner layout tables - unwrap it
                UnwrapLayoutTable(table, doc, processedTables);
                processedTables.Add(table);
                changed = true;
            }
        }
    }

    private bool IsDataTable(HtmlNode table)
    {
        string className = table.GetAttributeValue("class", "");

        // Check if table has wsgtable class - this is definitely a data table
        if (className.Contains("wsgtable", StringComparison.OrdinalIgnoreCase))
            return true;

        // Tables with these classes are layout tables, not data tables
        if (className.Contains("data-table", StringComparison.OrdinalIgnoreCase))
            return true;

        // Check if this table's DIRECT rows have th elements (not nested tables)
        // Use ./tbody/tr/th | ./tr/th to only look at direct row children
        var headerCells = table.SelectNodes("./tbody/tr/th | ./tr/th");
        if (headerCells != null && headerCells.Count > 0)
            return true;

        // Check the structure: layout tables typically have 2-4 columns
        // with spacer cells containing &nbsp;
        // Only look at direct rows, not nested table rows
        var rows = table.SelectNodes("./tbody/tr | ./tr");
        if (rows != null)
        {
            int spacerCells = 0;
            int contentCells = 0;
            var firstRow = rows.FirstOrDefault();
            if (firstRow != null)
            {
                // Only look at direct td children, not nested ones
                var cells = firstRow.SelectNodes("./td");
                if (cells != null)
                {
                    foreach (var cell in cells)
                    {
                        // Check if cell contains a nested table - skip table content for this check
                        var nestedTables = cell.SelectNodes(".//table");
                        string text;
                        if (nestedTables != null && nestedTables.Count > 0)
                        {
                            // Get text excluding nested table content
                            text = GetTextExcludingTables(cell);
                        }
                        else
                        {
                            text = cell.InnerText.Trim();
                        }
                        
                        if (string.IsNullOrEmpty(text) || text == "\u00A0" || text == "&nbsp;")
                            spacerCells++;
                        else
                            contentCells++;
                    }
                    
                    // If more than half the cells are spacers, it's likely a layout table
                    if (spacerCells > contentCells)
                        return false;
                }
            }
        }

        // Check if first row has bold content in MULTIPLE cells (header pattern)
        // Only look at direct tr children's td children
        var firstRowBoldCells = table.SelectNodes("(./tbody/tr | ./tr)[1]/td[./b or ./strong or ./*[self::b or self::strong]]");
        if (firstRowBoldCells != null && firstRowBoldCells.Count >= 2)
        {
            // Additional check: make sure these cells don't contain nested tables
            bool anyContainsNestedTable = firstRowBoldCells.Any(cell => cell.SelectNodes(".//table") != null);
            if (!anyContainsNestedTable)
            {
                // Verify these aren't section headers (which have specific classes)
                bool allHaveHeaderClass = firstRowBoldCells.All(cell =>
                {
                    string cellClass = cell.GetAttributeValue("class", "");
                    return cellClass.Contains("sectheader", StringComparison.OrdinalIgnoreCase) ||
                           cellClass.Contains("pageheader", StringComparison.OrdinalIgnoreCase);
                });
                
                if (!allHaveHeaderClass)
                    return true; // Genuine data table with bold headers
            }
        }

        return false;
    }

    private static string GetTextExcludingTables(HtmlNode node)
    {
        var sb = new StringBuilder();
        foreach (var child in node.ChildNodes)
        {
            if (child.Name.Equals("table", StringComparison.OrdinalIgnoreCase))
                continue;
            if (child.NodeType == HtmlNodeType.Text)
                sb.Append(child.InnerText);
            else
                sb.Append(GetTextExcludingTables(child));
        }
        return sb.ToString().Trim();
    }

    private void CleanDataTable(HtmlNode table)
    {
        // Preserve the table but clean up legacy attributes
        // (already handled by RemoveLegacyAttributes)

        // Ensure table has proper class if it's a data table without one
        string className = table.GetAttributeValue("class", "");
        if (string.IsNullOrEmpty(className))
            table.SetAttributeValue("class", "data-table");
    }

    private void UnwrapLayoutTable(HtmlNode table, HtmlDocument doc, HashSet<HtmlNode> processedTables)
    {
        // Create a container for the content
        var container = doc.CreateElement("div");
        container.SetAttributeValue("class", "content-section");

        // Track which data tables we've added to avoid duplicates
        var addedDataTables = new HashSet<HtmlNode>();

        // Get only the direct rows of this table, not nested table rows
        var rows = table.SelectNodes("./tbody/tr | ./tr");
        if (rows != null)
        {
            foreach (var row in rows)
            {
                // Get direct cell children only
                var cells = row.SelectNodes("./td | ./th");
                if (cells == null) continue;

                foreach (var cell in cells)
                {
                    string cellText = cell.InnerText.Trim();
                    
                    // Skip completely empty cells
                    if (string.IsNullOrEmpty(cellText) || cellText == "\u00A0")
                        continue;

                    // Check for special classes
                    string className = cell.GetAttributeValue("class", "");
                    bool isPageHeader = className.Contains("pageheader", StringComparison.OrdinalIgnoreCase);
                    bool isSectionHeader = className.Contains("sectheader", StringComparison.OrdinalIgnoreCase);

                    if (isPageHeader)
                    {
                        var heading = doc.CreateElement("h1");
                        heading.InnerHtml = GetCleanTextContent(cell);
                        container.AppendChild(heading);
                    }
                    else if (isSectionHeader)
                    {
                        var heading = doc.CreateElement("h2");
                        heading.InnerHtml = GetCleanTextContent(cell);
                        container.AppendChild(heading);
                    }
                    else
                    {
                        // Process direct child nodes in document order
                        // This preserves the order of content including wsgtables
                        ProcessCellContent(cell, container, doc, addedDataTables, processedTables);
                    }
                }
            }
        }

        // Replace table with container if it has content
        if (container.HasChildNodes)
            table.ParentNode.ReplaceChild(container, table);
        else
            table.Remove();
    }

    private void ProcessCellContent(HtmlNode cell, HtmlNode container, HtmlDocument doc, 
        HashSet<HtmlNode> addedDataTables, HashSet<HtmlNode> processedTables)
    {
        foreach (var child in cell.ChildNodes.ToList())
        {
            if (child.Name.Equals("table", StringComparison.OrdinalIgnoreCase))
            {
                // Check if this is a wsgtable (data table) - include it in order
                string tableClass = child.GetAttributeValue("class", "");
                if (tableClass.Contains("wsgtable", StringComparison.OrdinalIgnoreCase))
                {
                    if (!addedDataTables.Contains(child))
                    {
                        container.AppendChild(child.CloneNode(true));
                        addedDataTables.Add(child);
                        processedTables.Add(child);
                    }
                }
                // Skip other tables (layout tables that should have been processed already)
            }
            else if (child.Name.Equals("div", StringComparison.OrdinalIgnoreCase))
            {
                string divClass = child.GetAttributeValue("class", "");
                if (divClass.Contains("content-section", StringComparison.OrdinalIgnoreCase))
                {
                    // This is content from an already-unwrapped table, include it inline
                    foreach (var divChild in child.ChildNodes)
                    {
                        container.AppendChild(divChild.CloneNode(true));
                    }
                }
                else if (IsContentNode(child))
                {
                    // Recursively process div content to handle nested wsgtables
                    ProcessDivContent(child, container, doc, addedDataTables, processedTables);
                }
            }
            else if (IsContentNode(child))
            {
                container.AppendChild(child.CloneNode(true));
            }
        }
    }

    private void ProcessDivContent(HtmlNode div, HtmlNode container, HtmlDocument doc,
        HashSet<HtmlNode> addedDataTables, HashSet<HtmlNode> processedTables)
    {
        // Check if div contains any wsgtables
        var wsgtables = div.SelectNodes(".//table[@class='wsgtable']");
        if (wsgtables == null || wsgtables.Count == 0)
        {
            // No wsgtables, just clone the whole div
            container.AppendChild(div.CloneNode(true));
            return;
        }

        // Contains wsgtables - need to process in order
        foreach (var child in div.ChildNodes.ToList())
        {
            if (child.Name.Equals("table", StringComparison.OrdinalIgnoreCase))
            {
                string tableClass = child.GetAttributeValue("class", "");
                if (tableClass.Contains("wsgtable", StringComparison.OrdinalIgnoreCase))
                {
                    if (!addedDataTables.Contains(child))
                    {
                        container.AppendChild(child.CloneNode(true));
                        addedDataTables.Add(child);
                        processedTables.Add(child);
                    }
                }
            }
            else if (child.Name.Equals("div", StringComparison.OrdinalIgnoreCase))
            {
                ProcessDivContent(child, container, doc, addedDataTables, processedTables);
            }
            else if (IsContentNode(child))
            {
                container.AppendChild(child.CloneNode(true));
            }
        }
    }

    private List<HtmlNode> ExtractContentFromTable(HtmlNode table, HtmlDocument doc)
    {
        var result = new List<HtmlNode>();
        var processedTables = new HashSet<HtmlNode>();

        // Process rows to maintain some structure
        var rows = table.SelectNodes("./tbody/tr | ./tr");
        if (rows == null) return result;

        foreach (var row in rows)
        {
            var cells = row.SelectNodes("./td | ./th");
            if (cells == null) continue;

            // Create a section div for each row with meaningful content
            var rowContent = new List<HtmlNode>();

            foreach (var cell in cells)
            {
                // Skip empty cells and spacer cells
                string cellText = cell.InnerText.Trim();
                if (string.IsNullOrEmpty(cellText) || cellText == "&nbsp;" || cellText == "\u00A0")
                    continue;

                // Check if cell has a section header class
                string className = cell.GetAttributeValue("class", "");
                bool isPageHeader = className.Contains("pageheader", StringComparison.OrdinalIgnoreCase);
                bool isSectionHeader = className.Contains("sectheader", StringComparison.OrdinalIgnoreCase);

                if (isPageHeader)
                {
                    // Convert page headers to h1
                    var heading = doc.CreateElement("h1");
                    heading.InnerHtml = GetCleanTextContent(cell);
                    result.Add(heading);
                }
                else if (isSectionHeader)
                {
                    // Convert section headers to h2
                    var heading = doc.CreateElement("h2");
                    heading.InnerHtml = GetCleanTextContent(cell);
                    result.Add(heading);
                }
                else
                {
                    // Check if cell contains a data table (wsgtable)
                    var dataTables = cell.SelectNodes(".//table[@class='wsgtable']");
                    bool hasDataTable = dataTables != null && dataTables.Count > 0;
                    
                    if (hasDataTable)
                    {
                        // Add the data tables and skip other table children
                        foreach (var dataTable in dataTables!)
                        {
                            if (!processedTables.Contains(dataTable))
                            {
                                processedTables.Add(dataTable);
                                var clone = dataTable.CloneNode(true);
                                result.Add(clone);
                            }
                        }
                        
                        // Also add any non-table content from this cell
                        foreach (var child in cell.ChildNodes.ToList())
                        {
                            if (child.Name.Equals("table", StringComparison.OrdinalIgnoreCase))
                                continue; // Skip all tables, we extracted data tables already
                            
                            if (IsContentNode(child))
                            {
                                var clone = child.CloneNode(true);
                                rowContent.Add(clone);
                            }
                        }
                    }
                    else
                    {
                        // No data tables - extract all content elements
                        foreach (var child in cell.ChildNodes.ToList())
                        {
                            if (IsContentNode(child))
                            {
                                // Skip tables that are layout tables (will be processed separately)
                                if (child.Name.Equals("table", StringComparison.OrdinalIgnoreCase))
                                {
                                    string tableClass = child.GetAttributeValue("class", "");
                                    if (!tableClass.Contains("wsgtable", StringComparison.OrdinalIgnoreCase))
                                        continue; // Skip layout tables
                                }

                                var clone = child.CloneNode(true);
                                rowContent.Add(clone);
                            }
                        }
                    }
                }
            }

            // Add row content
            foreach (var node in rowContent)
                result.Add(node);
        }

        return result;
    }

    private static string GetCleanTextContent(HtmlNode node)
    {
        // Get text content, removing nested images and extra whitespace
        var clone = node.CloneNode(true);
        
        // Remove images
        var images = clone.SelectNodes(".//img");
        if (images != null)
        {
            foreach (var img in images.ToList())
                img.Remove();
        }
        
        // Remove BR at the start
        var leadingBrs = clone.SelectNodes("./br");
        if (leadingBrs != null)
        {
            foreach (var br in leadingBrs.ToList())
                br.Remove();
        }
        
        string text = clone.InnerText.Trim();
        return System.Net.WebUtility.HtmlEncode(text);
    }

    private static string GetTextContent(HtmlNode node)
    {
        // Get text content, removing nested images
        var clone = node.CloneNode(true);
        var images = clone.SelectNodes(".//img");
        if (images != null)
        {
            foreach (var img in images.ToList())
                img.Remove();
        }
        return clone.InnerHtml.Trim();
    }

    private static bool IsContentNode(HtmlNode node)
    {
        if (node.NodeType == HtmlNodeType.Text)
        {
            string text = node.InnerText.Trim();
            return !string.IsNullOrEmpty(text) && text != "&nbsp;" && text != "\u00A0";
        }

        if (node.NodeType != HtmlNodeType.Element)
            return false;

        string name = node.Name.ToLowerInvariant();

        // These elements typically contain content
        if (name is "p" or "h1" or "h2" or "h3" or "h4" or "h5" or "h6"
            or "pre" or "code" or "blockquote" or "ul" or "ol" or "li"
            or "a" or "strong" or "em" or "span" or "div" or "br"
            or "table" or "img")
        {
            // Check if it has non-empty content
            string text = node.InnerText.Trim();
            if (!string.IsNullOrEmpty(text) && text != "&nbsp;" && text != "\u00A0")
                return true;

            // Check if it has images (except decorative ones)
            if (node.Name.Equals("img", StringComparison.OrdinalIgnoreCase))
                return true;

            // Check for pre/code blocks which may appear empty but aren't
            if (name is "pre" or "code")
                return !string.IsNullOrWhiteSpace(node.InnerHtml);
        }

        return false;
    }

    #endregion

    #region Phase 3b: Clean up code blocks

    /// <summary>
    /// Cleans code blocks by removing &amp;nbsp; entities while preserving newlines and structure.
    /// </summary>
    private void CleanCodeBlocks(HtmlDocument doc)
    {
        // Clean inline CODE elements (not inside PRE)
        var inlineCodeElements = doc.DocumentNode.SelectNodes("//code[not(ancestor::pre)]");
        if (inlineCodeElements != null)
        {
            foreach (var code in inlineCodeElements.ToList())
            {
                CleanCodeElement(code);
            }
        }

        // Clean PRE/CODE blocks
        var preElements = doc.DocumentNode.SelectNodes("//pre");
        if (preElements != null)
        {
            foreach (var pre in preElements.ToList())
            {
                CleanPreElement(pre);
            }
        }
    }

    /// <summary>
    /// Cleans an inline CODE element - removes &amp;nbsp; and normalizes whitespace.
    /// </summary>
    private void CleanCodeElement(HtmlNode code)
    {
        // Get the inner HTML and clean it
        string content = code.InnerHtml;

        // Replace &nbsp; with regular space
        content = content.Replace("&nbsp;", " ");
        content = content.Replace("\u00A0", " ");

        // Replace actual newlines and surrounding whitespace with a single space
        // (inline code shouldn't have hard line breaks from source formatting)
        content = NewlinesWithWhitespaceRegex().Replace(content, " ");

        // Normalize multiple spaces
        content = MultipleSpacesInCodeRegex().Replace(content, " ");

        // Handle BR tags - split, trim each line, rejoin
        var lines = content.Split(new[] { "<br />", "<br/>", "<br>", "<BR />", "<BR/>", "<BR>" }, StringSplitOptions.None);
        if (lines.Length > 1)
        {
            // Multi-line code - preserve line structure but trim each line
            for (int i = 0; i < lines.Length; i++)
            {
                lines[i] = lines[i].Trim();
            }
            // Remove empty lines at start and end
            int start = 0;
            while (start < lines.Length && string.IsNullOrEmpty(lines[start]))
                start++;
            int end = lines.Length - 1;
            while (end >= start && string.IsNullOrEmpty(lines[end]))
                end--;
            
            if (start <= end)
            {
                content = string.Join("<br />", lines.Skip(start).Take(end - start + 1));
            }
        }
        else
        {
            // Single line - just trim
            content = content.Trim();
        }

        code.InnerHtml = content;
    }

    [GeneratedRegex(@"\s*[\r\n]+\s*", RegexOptions.Compiled)]
    private static partial Regex NewlinesWithWhitespaceRegex();

    /// <summary>
    /// Cleans a PRE element - preserves newlines but removes &amp;nbsp; indentation artifacts.
    /// </summary>
    private void CleanPreElement(HtmlNode pre)
    {
        // Find the code element inside if present
        var codeElement = pre.SelectSingleNode(".//code");
        var targetElement = codeElement ?? pre;

        string content = targetElement.InnerHtml;

        // Replace &nbsp; with regular space
        content = content.Replace("&nbsp;", " ");
        content = content.Replace("\u00A0", " ");

        // Split into lines preserving newlines
        var lines = content.Split('\n');
        
        // Find minimum indentation (ignore empty lines)
        int minIndent = int.MaxValue;
        foreach (var line in lines)
        {
            if (string.IsNullOrWhiteSpace(line)) continue;
            int indent = line.TakeWhile(char.IsWhiteSpace).Count();
            if (indent < minIndent) minIndent = indent;
        }

        // Remove common indentation
        if (minIndent > 0 && minIndent < int.MaxValue)
        {
            for (int i = 0; i < lines.Length; i++)
            {
                if (lines[i].Length >= minIndent)
                    lines[i] = lines[i].Substring(minIndent);
            }
        }

        // Trim leading/trailing empty lines
        int start = 0;
        while (start < lines.Length && string.IsNullOrWhiteSpace(lines[start]))
            start++;

        int end = lines.Length - 1;
        while (end >= start && string.IsNullOrWhiteSpace(lines[end]))
            end--;

        if (start <= end)
        {
            content = string.Join("\n", lines.Skip(start).Take(end - start + 1));
        }
        else
        {
            content = string.Empty;
        }

        targetElement.InnerHtml = content;
    }

    [GeneratedRegex(@"[ \t]{2,}", RegexOptions.Compiled)]
    private static partial Regex MultipleSpacesInCodeRegex();

    #endregion

    #region Phase 4: Clean up empty elements

    private void RemoveEmptyElements(HtmlDocument doc)
    {
        // Multiple passes to handle nested empty elements
        for (int i = 0; i < 3; i++)
        {
            var emptyElements = doc.DocumentNode.SelectNodes(
                "//p[not(normalize-space()) and not(.//img) and not(.//br)] | " +
                "//div[not(normalize-space()) and not(.//img) and not(.//br) and not(.//table)] | " +
                "//span[not(normalize-space()) and not(.//img)] | " +
                "//td[not(normalize-space()) and not(.//img) and not(.//table)]");

            if (emptyElements == null || emptyElements.Count == 0)
                break;

            foreach (var element in emptyElements.ToList())
            {
                // Don't remove if it has a meaningful class
                string className = element.GetAttributeValue("class", "");
                if (_options.PreserveClasses.Any(c => className.Contains(c, StringComparison.OrdinalIgnoreCase)))
                    continue;

                element.Remove();
            }
        }

        // Remove empty paragraphs containing only &nbsp;
        var nbspParagraphs = doc.DocumentNode.SelectNodes("//p[normalize-space()='\u00A0']");
        if (nbspParagraphs != null)
        {
            foreach (var p in nbspParagraphs.ToList())
                p.Remove();
        }

        // Also check for literal &nbsp; in InnerHtml
        var allParagraphs = doc.DocumentNode.SelectNodes("//p");
        if (allParagraphs != null)
        {
            foreach (var p in allParagraphs.ToList())
            {
                string inner = p.InnerHtml.Trim();
                if (inner == "&nbsp;" || inner == "\u00A0" || string.IsNullOrWhiteSpace(p.InnerText))
                {
                    // Don't remove if it has a meaningful class
                    string className = p.GetAttributeValue("class", "");
                    if (!_options.PreserveClasses.Any(c => className.Contains(c, StringComparison.OrdinalIgnoreCase)))
                    {
                        p.Remove();
                    }
                }
            }
        }
    }

    #endregion

    #region Phase 5: Final cleanup

    private static string GetCleanedHtml(HtmlDocument doc)
    {
        using var sw = new StringWriter();
        doc.Save(sw);
        return sw.ToString();
    }

    [GeneratedRegex(@"[\t ]+", RegexOptions.Compiled)]
    private static partial Regex MultipleSpacesRegex();

    [GeneratedRegex(@"(\r?\n){3,}", RegexOptions.Compiled)]
    private static partial Regex MultipleNewlinesRegex();

    [GeneratedRegex(@"^\s+$", RegexOptions.Multiline | RegexOptions.Compiled)]
    private static partial Regex WhitespaceOnlyLinesRegex();

    private static string NormalizeWhitespace(string html)
    {
        // Replace multiple spaces with single space (but not in pre/code blocks)
        // This is a simplified approach - a more robust solution would parse and preserve pre blocks

        // Normalize line endings
        html = html.Replace("\r\n", "\n").Replace("\r", "\n");

        // Remove whitespace-only lines
        html = WhitespaceOnlyLinesRegex().Replace(html, "");

        // Reduce multiple blank lines to maximum of 2
        html = MultipleNewlinesRegex().Replace(html, "\n\n");

        // Trim trailing whitespace from each line
        var lines = html.Split('\n');
        for (int i = 0; i < lines.Length; i++)
            lines[i] = lines[i].TrimEnd();

        return string.Join("\n", lines).Trim() + "\n";
    }

    #endregion
}
