# Resize Function

Resizes the rectangle.

## Syntax

```csharp
void Resize(double w, double h)<br> void Resize(double w, double h, Corner corner)
```

## Params

| Name | Description |
| --- | --- |
| w | The new width. |
| h | The new height. |
| corner | The corner to pin. |

## Notes

Changes the width and height of the rectangle while maintaining the position.

When you change the width or height of a rectangle one corner of the rectangle is pinned to maintain position. The corner which is pinned is indicated by the Pin property but you can override this default by specifying a corner when calling this function.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.Resize(50, 150);
Response.Write($"Pos. = {rc}");
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

