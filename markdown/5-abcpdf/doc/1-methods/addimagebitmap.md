# AddImageBitmap Function

Adds a System.Drawing.Bitmap to the current page.

## Syntax

```csharp
int AddImageBitmap(System.Drawing.Bitmap bm, bool transparent)
```

## Params

| Name | Description |
| --- | --- |
| bm | A .NET Bitmap to be added to the page. |
| transparent | Whether transparency information should be preserved. |
| return | The ID of the newly added Image Object. |

## Notes

Adds a System.Drawing.Bitmap to the current page.

If the Transparent parameter is set to true then any transparency information will be preserved. This allows you to add formats such as transparent GIF and PNG with alpha channel.

- The web page is scaled to fill the current Rect and transformed using the current Transform.

## Example

The following code adds a transparent PNG to a document.

```csharp
using var doc = new Doc();
string path = Server.MapPath("../mypics/mypic.png");
using var bm = new Bitmap(path);
doc.Rect.Inset(20, 20);
doc.Color.String = "0 0 200";
doc.FillRect();
doc.AddImageBitmap(bm, true);
bm.Dispose();
doc.Save(Server.MapPath("docaddimagebitmap.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

