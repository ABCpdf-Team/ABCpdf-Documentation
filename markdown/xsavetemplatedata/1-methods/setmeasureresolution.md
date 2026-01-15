# SetMeasureResolution Function

Sets the measurement resolutions.

## Syntax

```csharp
void SetMeasureResolution(double dpi)
void SetMeasureResolution(double dpiX, double dpiY)
```

## Params

| Name | Description |
| --- | --- |
| dpi | The new measurement resolution in DPI. |
| dpiX | The new horizontal measurement resolution in DPI. |
| dpiY | The new vertical measurement resolution in DPI. |

## Notes

Sets the measurement resolutions, which affects the measurements for certain output formats that does not support physical sizes. For example, SWF measurements are pixel-based while PDF measurements are in points (1/72 of an inch).  This specifies how many pixels in SWF an inch in PDF represents.

The values do not affect the pixel sizes of raster-image contents. If one of the values (dpiX or dpiY) is invalid, the other value may be used for both values.

For SWF, these values are used only if XSaveOptions.Template is null.

## Example

Here we use 72 DPI so that 1 inch in PDF becomes 72 pixels in SWF.

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf"));
doc.SaveOptions.TemplateData = new XSaveTemplateData();
doc.SaveOptions.TemplateData.SetMeasureResolution(72);
doc.Save(Server.MapPath("swfsave_mr.swf")); // Windows specific);
```

