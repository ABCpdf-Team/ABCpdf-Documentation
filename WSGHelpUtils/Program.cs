// HTML to Markdown Converter
if (args.Length == 0 || args[0] == "--help" || args[0] == "-h")
{
    Console.WriteLine("WSGHelpUtils - HTML to Markdown Converter");
    Console.WriteLine();
    Console.WriteLine("Usage: WSGHelpUtils <source-path> <output-folder> [--clean] [--css <name>]");
    Console.WriteLine();
    Console.WriteLine("Converts HTML files to styled Markdown with front matter.");
    Console.WriteLine();
    Console.WriteLine("Options:");
    Console.WriteLine("  --clean    Clean HTML first (removes layout tables, legacy markup)");
    Console.WriteLine("  --css      CSS filename to reference in front matter (default: abcpdf-docs.css)");
    Console.WriteLine();
    Console.WriteLine("Examples:");
    Console.WriteLine("  WSGHelpUtils C:\\docs\\html C:\\docs\\markdown --clean");
    Console.WriteLine("  WSGHelpUtils input.htm output\\ --clean --css styles.css");
    return 1;
}

if (args.Length < 2)
{
    Console.WriteLine("Error: Source path and output folder are required.");
    Console.WriteLine("Use --help for usage information.");
    return 1;
}

string sourcePath = args[0];
string outputFolder = args[1];
string cssName = "abcpdf-docs.css";
bool cleanFirst = false;

for (int i = 2; i < args.Length; i++)
{
    if (args[i] == "--css" && i + 1 < args.Length)
        cssName = args[++i];
    else if (args[i] == "--clean")
        cleanFirst = true;
}

try
{
    Directory.CreateDirectory(outputFolder);

    var options = new WSGHelpUtils.MarkdownStyler.StyleOptions
    {
        CssFileName = cssName,
        IncludeFrontMatter = true
    };

    var styler = new WSGHelpUtils.MarkdownStyler(options);

    // Get HTML files
    var htmlFiles = Directory.Exists(sourcePath)
        ? Directory.GetFiles(sourcePath, "*.htm", SearchOption.AllDirectories)
            .Concat(Directory.GetFiles(sourcePath, "*.html", SearchOption.AllDirectories))
            .ToArray()
        : new[] { sourcePath };

    Console.WriteLine($"Processing {htmlFiles.Length} files{(cleanFirst ? " (with HTML cleaning)" : "")}...");
    int processed = 0;
    int failed = 0;

    WSGHelpUtils.HtmlCleaner? cleaner = cleanFirst ? new WSGHelpUtils.HtmlCleaner() : null;

    foreach (string file in htmlFiles)
    {
        try
        {
            string html = await File.ReadAllTextAsync(file);

            if (cleaner != null)
                html = cleaner.Clean(html);

            string title = Path.GetFileNameWithoutExtension(file);
            string markdown = styler.ConvertToStyledMarkdown(html, title);

            string relativePath = Directory.Exists(sourcePath)
                ? Path.GetRelativePath(sourcePath, file)
                : Path.GetFileName(file);
            string outputPath = Path.Combine(outputFolder, Path.ChangeExtension(relativePath, ".md"));

            string? outputDir = Path.GetDirectoryName(outputPath);
            if (!string.IsNullOrEmpty(outputDir))
                Directory.CreateDirectory(outputDir);

            await File.WriteAllTextAsync(outputPath, markdown);
            processed++;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error processing {file}: {ex.Message}");
            failed++;
        }
    }

    Console.WriteLine($"\nCompleted: {processed} processed, {failed} failed");

    // Copy image files if source is a directory
    if (Directory.Exists(sourcePath))
    {
        string[] imageExtensions = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.bmp", "*.svg", "*.webp", "*.ico" };
        int imagesCopied = 0;

        foreach (string ext in imageExtensions)
        {
            foreach (string imageFile in Directory.GetFiles(sourcePath, ext, SearchOption.AllDirectories))
            {
                try
                {
                    string relativePath = Path.GetRelativePath(sourcePath, imageFile);
                    string destPath = Path.Combine(outputFolder, relativePath);

                    string? destDir = Path.GetDirectoryName(destPath);
                    if (!string.IsNullOrEmpty(destDir))
                        Directory.CreateDirectory(destDir);

                    File.Copy(imageFile, destPath, overwrite: true);
                    imagesCopied++;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error copying image {imageFile}: {ex.Message}");
                }
            }
        }

        if (imagesCopied > 0)
            Console.WriteLine($"Images copied: {imagesCopied}");
    }

    // Generate CSS file
    string cssPath = Path.Combine(outputFolder, cssName);
    string css = styler.GenerateCss();
    await File.WriteAllTextAsync(cssPath, css);
    Console.WriteLine($"CSS file generated: {cssPath}");

    return failed > 0 ? 1 : 0;
}
catch (Exception ex)
{
    Console.WriteLine($"Error: {ex.Message}");
    return 1;
}
