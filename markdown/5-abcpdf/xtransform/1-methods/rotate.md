# Rotate Function

Rotate about a locked anchor point (angle in degrees).

## Syntax

```csharp
void Rotate(double angle, double anchorX, double anchorY)
```

## Params

| Name | Description |
| --- | --- |
| angle | The angle to rotate in degrees. |
| anchorX | The horizontal coordinate about which the rotation should be applied. |
| anchorY | The vertical coordinate about which the rotation should be applied. |

## Notes

This method rotates the world space about a locked anchor point. The angle is specified in degrees anti-clockwise.

## Example

Here we add a number of chunks of text rotated at different 
            angles about the middle of the document.

```csharp
using var doc = new Doc();
doc.FontSize = 48;
doc.TextStyle.Indent = 48;
for (int i = 1; i <= 8; i++) {
  int angle = i * 45;
  doc.Pos.String = "302 396";
  doc.Transform.Reset();
  doc.Transform.Rotate(angle, 302, 396);
  doc.AddText($"Rotated {angle}");
}
doc.Save(Server.MapPath("rotate.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![rotate.pdf](../../../../images/pdf/rotate.pdf.png) — rotate.pdf
