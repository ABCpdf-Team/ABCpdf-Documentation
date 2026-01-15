# Inset Function

Insets the edges of the rectangle.

## Syntax

```csharp
void Inset(double x, double y)
```

## Params

| Name | Description |
| --- | --- |
| x | The amount to inset the left and right edges. |
| y | The amount to inset the top and bottom edges. |

## Notes

Insets the edges of the rectangle by a specified horizontal and vertical amount.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "0 0 200 100";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.Inset(10, 20);
Response.Write("Inset = " + rc.String);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

