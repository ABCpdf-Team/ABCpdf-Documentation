# Translate Function

Translate horizontally and vertically.

## Syntax

```csharp
void Translate(double x, double y)
```

## Params

| Name | Description |
| --- | --- |
| x | The distance to translate to the right. |
| y | The distance to translate upwards. |

## Notes

This method shifts the world space a specified distance up and to the right. Objects on the PDF will appear to translate upwards and to the right.

## Example

Here we draw two rectangles into our document. The black 
            rectangle is drawn before the translation operation and the red one 
            is drawn after it.

```csharp
using var doc = new Doc();
doc.Rect.Width = 200;
doc.Rect.Height = 250;
doc.Rect.Position(100, 100);
doc.Width = 20;
doc.FrameRect();
doc.Transform.Translate(200, 200);
doc.Color.String = "255 0 0"; // red
doc.FrameRect();
doc.Save(Server.MapPath("transformtranslate.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

