# SetRgb Function

Set the color to an RGB value.

## Syntax

```csharp
void SetRgb(int red, int green, int blue)
void SetRgb(int red, int green, int blue, int alpha)
void SetRgb(double red, double green, double blue)
void SetRgb(double red, double green, double blue, double alpha)
```

## Params

| Name | Description |
| :---: | --- |
| red | The amount of red (0 to 255). |
| green | The amount of green (0 to 255). |
| blue | The amount of blue (0 to 255). |
| alpha | The level of opacity from transparent through to fully opaque (0 to 255). |

## Notes

Set the color to RGB and provide a value for it.

Optionally set the alpha value to specify a transparency level. If this parameter is omitted the color is set to fully opaque - no transparency.

## Example

Also see example code in: [Doc AddXObject Function](../../doc/1-methods/addxobject.md), [Doc String Property](../../doc/2-properties/string.md), [XTagging Close Function](../../xtagging/1-methods/05-close.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [ImageOperation GetImageProperties Function](../../../8-abcpdf.operations/9-imageoperation/1-methods/getimageproperties.md).
