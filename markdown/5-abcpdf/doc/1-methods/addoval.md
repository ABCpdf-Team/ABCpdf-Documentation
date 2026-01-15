# AddOval Function

Adds an oval to the current page.

## Syntax

```csharp
int AddOval(bool filled)
```

## Params

| Name | Description |
| --- | --- |
| filled | Whether to fill the oval rather than simply outline it. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

The AddOval function returns the Object ID of the newly added Graphic Object.

## Example

The following code adds two ovals to a document. The outline oval 
            is semi-transparent.

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Rect.Inset(50, 50);
doc.Color.String = "255 0 0";
doc.AddOval(true);
doc.Color.String = "0 255 0 128";
doc.AddOval(false);
doc.Save(Server.MapPath("docaddoval.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![docaddoval.pdf](../../../../images/pdf/docaddoval.pdf.png) — docaddoval.pdf
