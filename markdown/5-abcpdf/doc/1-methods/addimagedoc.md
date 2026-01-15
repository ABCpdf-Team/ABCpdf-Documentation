# AddImageDoc Function

Draw a page from one PDF document onto the current page of this 
            document.

## Syntax

```csharp
int AddImageDoc(Doc doc, int page, XRect rect)<br> int AddImageDoc(Doc doc, int page, XRect rect, bool copyAnnotations)
int AddImageDoc(Doc doc, int page, XRect rect, bool copyAnnotations, double alpha) <br> int AddImageDoc(Doc doc, int page, XRect rect, bool copyAnnotations, bool copyTags, double alpha)
```

## Params

| Name | Description |
| --- | --- |
| doc | The document to be used as the source. |
| page | The page you want drawn. Use one to indicate the first page. |
| rect | The portion of the page you want drawn. Pass null to specify the entire page. |
| alpha | The level of alpha to apply to the drawn page from transparent through to fully opaque (0 to 255). |
| return | The ID of the newly added Image Object. |

## Notes

Draw a page from one PDF document onto the current page of this document returning the ID of the newly added object.

- The web page is scaled to fill the current Rect and transformed using the current Transform.

Many field and  annotation types can only exist as a simple rectangle with sides parallel to the page borders. For this reason you should be cautious about the transforms you use when specifying that annotations should be copied. A transform which involves scale and translation will be fine but one involving rotation and skew factors may result in unusual output if the field or annotation does not support this combination.

If you are copying accessibility  tags they are taken from the source page and placed into a non structural group. The group is then inserted at the end of the  structure for the destination page. In most cases this is what you want. However tagging structures can be complex and not all documents are compatible with each other. If incompatible structures are found the structures in the destination document will be preferred over those from the source document.

The SaveOptions.Refactor setting determines whether duplicate and  redundant objects are eliminated. The SaveOptions.Preflight setting determines whether objects in the destination document are validated before this operation is performed.

Unless the document and the pages are big in terms of memory use and have many common objects, it is faster to disable SaveOptions.Refactor and SaveOptions.Preflight for adding the pages and enable them for saving the document.

Pages may be rotated. As such, when drawing one page onto another, you may wish to copy the Page.Rotation from the source page to the destination page. More complex example code to de-rotate a page may be found under the documentation for the Page.Rotation.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

This example shows how to draw one PDF into another. It takes a 
            PDF document and creates a 'four-up' summary document by drawing 
            four pages on each page of the new document.

```csharp
using var src = new Doc();
src.Read(Server.MapPath("../Rez/spaceshuttle.pdf"));
int count = src.PageCount;
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![fourup.pdf - [Page 1]](../../../../images/pdf/fourup.pdf.png) — fourup.pdf - [Page 1]
![fourup.pdf - [Page 2]](../../../../images/pdf/fourup.pdf2.png) — fourup.pdf - [Page 2]
