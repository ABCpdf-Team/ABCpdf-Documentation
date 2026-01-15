# AddImageFile Function

Extract an image from a file and add it to the current page.

## Params

| Name | Description |
| --- | --- |
| path | A file path, URL or html string to be added to the page. |
| frame | Some image types support multiple frames or pages. This is the one based index specifying the required frame (default one). |
| return | The Object ID of the newly added Image Object. |

## Notes

Adds an image to the current page returning the ID of the newly added object.

This method  supports JPEG, JPEG 2000, TIFF, EMF, WMF, PS (PostScript) or EPS (Encapsulated PostScript).

Images embedded using this method are  inserted using a restricted range of ReadModules. For this reason you may wish to prefer the use of the AddImageObject method. AddImageFile is the equivalent of AddImageObject with the transparent parameter set to true.

The only difference between AddImageFile and AddImageObject relates to the treatment of EMF and WMF files. AddImageFile defaults to the EmfVector ReadModule which means that the vector nature of such files will be preserved. AddImageObject defaults to the BasicImage ReadModule which means that such files will be rasterized. For more details see the ReadModule property.

- The web page is scaled to fill the current Rect and transformed using the current Transform.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

The following code adds an image to the current page positioned 
            at the bottom left.

```csharp
using var doc = new Doc();
doc.Rect.String = "0 0 510 638";
string path = Server.MapPath("../mypics/pic.jpg");
doc.AddImageFile(path, 1);
doc.Save(Server.MapPath("docaddimage.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![docaddimage.pdf ](../../../../images/pdf/docaddimage.pdf.png) — docaddimage.pdf 
