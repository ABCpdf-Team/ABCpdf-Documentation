# Read Function

Reads an existing document.

## Syntax

```csharp
void Read(string path)
void Read(byte[] data)
void Read(Stream stream)
void Read(string path, string password)
void Read(byte[] data, string password)
void Read(Stream stream, string password)
void Read(string path, XReadOptions options)
void Read(byte[] data, XReadOptions options)
void Read(Stream stream, XReadOptions options)
```

## Params

| Name | Description |
| --- | --- |
| path | The file path to the PDF, OpenOffice.org, SVG, RTF, XPS or other supported document type. |
| data | The source PDF data. |
| stream | The source PDF or document stream. |
| password | Any password needed to open the document. |
| options | The settings for the read. |

## Notes

Use this method to read a file into a document object. Any existing document content will be discarded. All properties will be set back to their defaults.

You can specify a PDF as a file path or by passing in the raw PDF data. Raw data must be held as an array of bytes. You can open encrypted PDF documents if you supply a valid password.

You may notice that colors in the PDF files are slightly different if you are reading non-PDF files. PDF handles alpha blending differently from other file formats. Refer to SwfImportOperation.Import for notes about alpha blending.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

After the read operation is complete the Page property will contain the ID of the first page in the document. The Rect and MediaBox properties will reflect the size of the first page in the document.

ABCpdf .NET operates an intelligent just-in-time object loading scheme for PDFs which ensures that only those objects that are required are loaded into memory. This means that if you are modifying large documents then server load will be kept to a minimum. The original PDF document must be available for as long as the Doc object is being used. As a result you cannot modify or overwrite a PDF file while it is read into a Doc object. You will need to save your PDF to another location and then swap the two files around after the Doc object's use of the PDF is ended (with a call to Clear, Dispose, or Read with another PDF file).

Object deletion requires that all references to an object are removed. There is no way of doing this without checking each object in the document. So object deletion requires that every object in the document is loaded and for large documents this may place a significant load on the server. Reading encrypted documents places a greater load on the server because - like object deletion - it requires that every object in the document be loaded.

Please note that you are legally bound to respect the permissions present in existing PDF documents. For details please see the Legal Requirement Section.

The Read method may be used to read eForm FDF documents as well as PDF documents. Most PDF operations will not work on FDF documents but you can query field values using the GetInfo methods to return Unicode strings.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

The following illustrates how one might add a large red number to 
            every page of a PDF document.

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf"));
doc.FontSize = 500;
doc.Color.String = "255 0 0";
doc.TextStyle.HPos = 0.5;
doc.TextStyle.VPos = 0.3;
int count = doc.PageCount;
for (int i = 1; i <= count; i++) {
  doc.PageNumber = i;
  doc.AddText(i.ToString());
}
doc.Save(Server.MapPath("docread.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

