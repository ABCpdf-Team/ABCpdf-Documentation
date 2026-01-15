# Move Function

Translate the rectangle.

## Syntax

```csharp
void Move(double x, double y)
```

## Params

| Name | Description |
| --- | --- |
| x | The horizontal distance to move the rectangle. |
| y | The vertical distance to move the rectangle. |

## Notes

Moves the rectangle maintaining the width and height.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
rc.Move(50, 50);
Response.Write("&lt;br&gt;");
Response.Write($"Move = {rc}");
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

