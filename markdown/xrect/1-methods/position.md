# Position Function

Position the bottom left of the rectangle.

## Syntax

```csharp
void Position(double x, double y)<br> void Position(double x, double y, Corner corner)
```

## Params

| Name | Description |
| --- | --- |
| x | The new left position. |
| y | The new bottom position. |
| corner | The corner to position. |

## Notes

Moves the rectangle to the supplied position while maintaining the width and height.

The corner moved to the location is indicated by the Pin property but you can override this default by specifying a corner when calling this function.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.Position(50, 50);
Response.Write($"Pos. = {rc}");
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

