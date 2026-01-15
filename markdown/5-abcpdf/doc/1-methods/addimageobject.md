# AddImageObject 
Function

Adds an XImage based image to the current page.

## Params

| Name | Description |
| --- | --- |
| image | An XImage containing the image to be added to the page. |
| transparent | Whether transparency information should be preserved. This parameter overrides the PreserveTransparency property of the XReadOptions used to create the XImage. If this parameter is not specified and the XImage has been created without a XReadOptions, this parameter is defaulted to false. |
| return | The ID of the newly added Image Object. If the image is added as multiple objects, such as if it has been created with an XReadOptions with ReadModule of SwfVector (with a non-null Operation), Xps, or XpsAny, the ID is zero. If XReadOptions.Operation has been null, the temporary SwfImportOperation allows this method to return the ID of the GraphicLayer for the frame of XReadOptions.Frame. |

## Notes

If the XImage has been created with an XReadOptions with ReadModule that uses an Operation, the operation will be invoked and the result depends on the operation. Otherwise, this method gets an image from the Image object and adds it to the current page returning the ID of the newly added object.

Adds the Selection of the current Frame returning the ID of the newly added object.

Ultimately each image which is imported goes through a ReadModule, so see that property for the types of images that can be imported and how they are handled.

If the Transparent parameter is set to true then any transparency information will be preserved. This allows you to add formats such as transparent GIF, PNG with alpha channel, or images with masks set using the Image.SetMask method.

- The web page is scaled to fill the current Rect and transformed using the current Transform.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

The 
following code adds a transparent GIF against a gray background.

```csharp
using var img = new XImage();
img.SetFile(Server.MapPath("../mypics/mypic.gif"));
using Doc doc = new Doc();
doc.Color.String = "200 200 200";
doc.FillRect();
doc.Rect.String = "0 0 480 640";
doc.AddImageObject(img, true);
doc.Save(Server.MapPath("docaddimageobject.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

