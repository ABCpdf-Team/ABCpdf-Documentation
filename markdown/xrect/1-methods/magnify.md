# Magnify Function

Magnifies the rectangle.

## Syntax

```csharp
void Magnify(double x, double y)
```

## Params

| Name | Description |
| --- | --- |
| x | The horizontal scale factor. |
| y | The vertical scale factor. |

## Notes

Scales the rectangle width and height by a specified horizontal and vertical amount.

When you magnify a rectangle one corner of the rectangle is pinned and the width and height of the rectangle adjusted. The corner which is pinned is indicated by the Pin property. The default pin corner is the bottom left.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.Magnify(0.5, 0.5);
Response.Write($"Scale = {rc}");
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

