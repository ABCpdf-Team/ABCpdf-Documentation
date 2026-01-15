# SetRect Function

Sets the location and size of the rectangle.

## Syntax

```csharp
void SetRect(double x, double y, double w, double h)
void SetRect(<a href="../default.htm">XRect</a> rect)
```

## Params

| Name | Description |
| --- | --- |
| x | The new left position. |
| y | The new bottom position. |
| w | The new width. |
| h | The new height. |
| rect | The source rectangle. |

## Notes

Sets the location and size of the rectangle.

The width and height of the rectangle are set to the new width and height.

The rectangle is then moved to the supplied position while maintaining the width and height. The corner moved to the location is indicated by the Pin property. The default pin corner is the bottom left.

The overload taking an XRect copies the effective location and size. It behaves as if this XRect and the parameter XRect use the default Pin and the default coordinate settings (Doc.TopDown and Doc.Units) so it functions differently from the other overload and from copying using String. Pin is not copied.

For example suppose you have a Doc object (called doc) for which you have set the Doc.Units to mm and also a separate XRect (called rect) that you have created. If you call rect.SetRect(doc.Rect) the rect will contain coordinates in points rather than mm. Similarly if you call doc.Rect.SetRect(rect), the point based units within the rect will be converted to mm for insertion into the doc.Rect. So there is an automatic conversion between coordinate systems.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.SetRect(20, 40, 50, 150);
Response.Write("Pos. = {rc}");
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

