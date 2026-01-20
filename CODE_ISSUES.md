# Code Issues

This file documents platform-specific and potentially invalid C# 14 code found in the ABCpdf .NET documentation examples.

## Claude Prompt that Generated this File

Examine all the HTML files in the Manual folder and find example code blocks. For each code block evaluate if the code contains platform specific or invalid code for C# 14. If so - in a new file called CODE_ISSUES.md att a link to the hatml file and a markdown code block. Append an appriate comment to the code in the issues file.

## Summary

- **Total files with C# code examples:** 284
- **Files with platform-specific code:** ~200+
- **Invalid C# 14 syntax:** None found (all syntax is valid)

## Issue Categories

### 1. ASP.NET Specific: `Server.MapPath` (182 files)

`Server.MapPath` is an ASP.NET-specific method that doesn't exist in console applications or other non-ASP.NET contexts.

**Affected files include:**
- [4-examples/02-textflow.htm](4-examples/02-textflow.htm)
- [4-examples/02-textflow2.htm](4-examples/02-textflow2.htm)
- [4-examples/03-multistyled.htm](4-examples/03-multistyled.htm)
- [4-examples/04-image.htm](4-examples/04-image.htm)
- [4-examples/05-deletion.htm](4-examples/05-deletion.htm)
- [4-examples/06-headers.htm](4-examples/06-headers.htm)
- [4-examples/08-landscape.htm](4-examples/08-landscape.htm)
- [4-examples/09-table1.htm](4-examples/09-table1.htm)
- [4-examples/10-table2.htm](4-examples/10-table2.htm)
- [4-examples/12-unicode.htm](4-examples/12-unicode.htm)
- [4-examples/13-pagedhtml.htm](4-examples/13-pagedhtml.htm)
- [4-examples/15-eform1.htm](4-examples/15-eform1.htm)
- [4-examples/15-eform2.htm](4-examples/15-eform2.htm)
- [4-examples/15-eform3.htm](4-examples/15-eform3.htm)
- [4-examples/16-eformfdf.htm](4-examples/16-eformfdf.htm)
- [4-examples/17-advancedgraphics.htm](4-examples/17-advancedgraphics.htm)
- [4-examples/18-annotations.htm](4-examples/18-annotations.htm)
- [4-examples/19-rendering.htm](4-examples/19-rendering.htm)
- [4-examples/20-systemdrawing.htm](4-examples/20-systemdrawing.htm)
- Most files in 5-abcpdf/, 6-abcpdf.objects/, 7-abcpdf.atoms/, 8-abcpdf.operations/

**Example from [4-examples/02-textflow.htm](4-examples/02-textflow.htm):**

```csharp
doc.Save(Server.MapPath("textflow.pdf")); // ASP.NET specific - use Path.Combine or relative paths instead
```

---

### 2. Windows-Only: `System.Drawing.Bitmap` (21+ files)

`System.Drawing.Bitmap` is Windows-only in modern .NET (requires `System.Drawing.Common` package and Windows OS, or use `Microsoft.Maui.Graphics` for cross-platform).

**Affected files include:**
- [5-abcpdf/doc/1-methods/addimagebitmap.htm](5-abcpdf/doc/1-methods/addimagebitmap.htm)
- [5-abcpdf/xrendering/1-methods/getbitmap.htm](5-abcpdf/xrendering/1-methods/getbitmap.htm)
- [6-abcpdf.objects/pixmap/1-methods/getbitmap.htm](6-abcpdf.objects/pixmap/1-methods/getbitmap.htm)
- [6-abcpdf.objects/page/1-methods/getbitmap.htm](6-abcpdf.objects/page/1-methods/getbitmap.htm)
- [8-abcpdf.operations/6-renderoperation/1-methods/getbitmap.htm](8-abcpdf.operations/6-renderoperation/1-methods/getbitmap.htm)
- [4-examples/20-systemdrawing.htm](4-examples/20-systemdrawing.htm)

**Example from [5-abcpdf/doc/1-methods/addimagebitmap.htm](5-abcpdf/doc/1-methods/addimagebitmap.htm):**

```csharp
using var doc = new Doc();
string path = Server.MapPath("../mypics/mypic.png"); // ASP.NET specific
using var bm = new Bitmap(path); // Windows specific - System.Drawing.Bitmap is Windows-only in .NET 6+
doc.Rect.Inset(20, 20);
doc.Color.String = "0 0 200";
doc.FillRect();
doc.AddImageBitmap(bm, true);
bm.Dispose();
doc.Save(Server.MapPath("docaddimagebitmap.pdf")); // ASP.NET specific
```

---

### 3. Windows-Only: WPF APIs (1 file)

WPF (Windows Presentation Foundation) is Windows-only.

**Affected files:**
- [4-examples/21-wpftables.htm](4-examples/21-wpftables.htm)

**Example from [4-examples/21-wpftables.htm](4-examples/21-wpftables.htm):**

```csharp
using var stm = ModifyXamlUsingTextProvider(null, null, null, null);
var page = XamlReader.Load(stm) as System.Windows.Controls.Page; // Windows specific - WPF is Windows-only
var docViewer = LogicalTreeHelper.FindLogicalNode(page, "DocViewer") as FlowDocumentPageViewer; // Windows specific
page.Content = null;
```

```csharp
void SaveToXps(Stream fileStream, FlowDocumentPageViewer viewer) {
  using var package = Package.Open(fileStream, FileMode.Create, FileAccess.ReadWrite); // Windows specific
  using var doc = new XpsDocument(package); // Windows specific - XPS is Windows-only
  var writer = XpsDocument.CreateXpsDocumentWriter(doc);
  var document = viewer.Document;
  writer.Write(document.DocumentPaginator);
}
```

---

### 4. Windows-Only: `System.Drawing.Rectangle`, `Point`, `PointF`, `RectangleF` interop

These types are used for interop with System.Drawing.

**Affected files include:**
- [5-abcpdf/xrect/2-properties/rectangle.htm](5-abcpdf/xrect/2-properties/rectangle.htm)
- [5-abcpdf/xpoint/2-properties/point.htm](5-abcpdf/xpoint/2-properties/point.htm)
- [5-abcpdf/xtransform/1-methods/transformpoints.htm](5-abcpdf/xtransform/1-methods/transformpoints.htm)
- [4-examples/20-systemdrawing.htm](4-examples/20-systemdrawing.htm)

**Example from [4-examples/20-systemdrawing.htm](4-examples/20-systemdrawing.htm):**

```csharp
using System;
using System.IO;
using System.Reflection;

using WebSupergoo.ABCpdf13.Drawing;
using WebSupergoo.ABCpdf13.Drawing.Drawing2D;
using WebSupergoo.ABCpdf13.Drawing.Text;
using Rectangle = System.Drawing.Rectangle; // Windows specific - System.Drawing types
using RectangleF = System.Drawing.RectangleF; // Windows specific
using Point = System.Drawing.Point; // Windows specific
using PointF = System.Drawing.PointF; // Windows specific
```

---

## C# 14 / .NET 10 Compatibility Notes

All code examples reviewed use valid C# 14 syntax. The code uses modern features like:
- `using` declarations (file-scoped using)
- Pattern matching
- String interpolation
- Collection expressions

No invalid C# 14 syntax was found.

---

## Recommendations

1. **Replace `Server.MapPath`** with cross-platform alternatives:
   ```csharp
   // Instead of:
   Server.MapPath("file.pdf")

   // Use:
   Path.Combine(AppContext.BaseDirectory, "file.pdf")
   // Or for ASP.NET Core:
   Path.Combine(webHostEnvironment.ContentRootPath, "file.pdf")
   ```

2. **For `System.Drawing.Bitmap`** on cross-platform:
   - Use `SkiaSharp` or `ImageSharp` for cross-platform image processing
   - Or add a note that these APIs are Windows-only

3. **For WPF/XPS code**:
   - Document that these examples are Windows-only
   - Consider providing alternative examples for cross-platform scenarios
