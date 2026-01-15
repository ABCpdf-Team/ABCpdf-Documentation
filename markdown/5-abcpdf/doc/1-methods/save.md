# Save Function

Saves the document as PDF.

## Syntax

```csharp
void Save(string path)
void Save(Stream stream)
```

## Params

| Name | Description |
| --- | --- |
| path | The destination file path. |
| stream | The destination stream. |

## Notes

Use this method to export the current document as PDF, XPS, PostScript, HTML, DOCX, WebGL or SWF.

To export as XPS, PostScript, DOCX or HTML you need to specify a file path with an appropriate extension - ".xps", ".ps", ".docx", ".htm", ".html" or ".swf". If the file extension is unrecognized then the default PDF format will be used.

When saving to a Stream the format can be indicated using a Doc.SaveOptions.FileExtension property such as ".htm" or ".xps". For HTML you must provide a sensible value for the Doc.SaveOptions.Folder property. For XPS streams must be both readable and writable - FileAccess.ReadWrite and not simply FileAccess.Write.

ABCpdf operates an intelligent just-in-time object loading scheme which ensures that only those objects that are required are loaded into memory. This means that if you are modifying large documents then server load will be kept to a minimum. The original PDF document must be available for as long as the Doc object is being used.

As a result you cannot modify or overwrite a PDF file while it is read into a Doc object. You will need to save your PDF to another location and then swap the two files around after the Doc object's use of the PDF is ended (with a call to Clear, Dispose, or Read with another PDF file).

If you need to obtain a PDF as raw data you can use the GetData function.

The SaveOptions.Refactor setting determines whether duplicate and  redundant objects are eliminated when the document is saved.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

When saving to SWF, if the Doc.SaveOptions.Template is null, the current page is exported with Rect as the bounds of the Flash movie using Doc.SaveOptions.TemplateData.MeasureDpiX and Doc.SaveOptions.TemplateData.MeasureDpiY if specified. Otherwise, Doc.SaveOptions.Template specifies the path to a SWF file. The saved SWF file starts with the template SWF files, and a frame is added for each page in the document. The script added is in ActionScript 2. If the template's version is Flash Player 7 or lower, the saved file's version will be Flash Player 8. For information on the interaction between the added frames and the script from the template, please refer to the example Flash file. Images are output in JPEG if (1) they are in DeviceGray or DeviceRGB and already in JPEG (without any other compression on top), or (2) they are not in the indexed color space and both the width and the height are at least 8 pixels. For (1), the original JPEG data is used so you can control the quality by pre-compressing the images; for (2), the output will use 80% quality.

## Example

The following code illustrates how one might add text to a PDF 
            and then save it out.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
doc.AddText("Hello World");
doc.Save(Server.MapPath("docsave.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![docsave.pdf ](../../../../images/pdf/docsave.pdf.png) — docsave.pdf 
