# SetComponents Function

Set the color to a set of ColorSpace PDF components

## Syntax

```csharp
void SetComponents(double value1)
void SetComponents(double value1, double value2)
void SetComponents(double value1, double value2, double value3)
void SetComponents(double value1, double value2, double value3, double value4)
```

## Params

| Name | Description |
| :---: | --- |
| value1 | The intensity of the first component (typically 0 to 1) |
| value2 | The intensity of the second component (typically 0 to 1) |
| value3 | The intensity of the third component (typically 0 to 1) |
| value4 | The intensity of the fourth component (typically 0 to 1) |

## Notes

Sets the color to the generic [ColorSpace](../2-properties/colorspace.md) color space and provide a set of components for it.

PDF color components typically range between zero - no intensity - and one - 100% intensity. However this is not always the case. For color spaces such as Lab the components may take a wider range of values.

## Example

Also see example code in: [ColorSpace Gamma Property](../../../6-abcpdf.objects/colorspace/2-properties/gamma.md), [ColorSpace WhitePoint Property](../../../6-abcpdf.objects/colorspace/2-properties/whitepoint.md).
