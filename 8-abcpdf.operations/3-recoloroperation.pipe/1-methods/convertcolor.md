# ConvertColor Function

Convert color components from the source color space to the destination one.

## Syntax

```csharp
void ConvertColor(double[] from, double[] to)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| from | An array of source color components. The number of items in the array should be equal to the number of components in the source color space. |
| to | An array of destination color components which will be updated with the values. The number of items in the array should be equal to the number of components in the destination color space. |

## Notes

Convert color components from the source color space to the destination one.

Color components typically vary between zero and one representing the intensity of each component. So a high intensity green in the RGB color space might be represented as \[0.0 1.0 0.0\].

You need to ensure that the arrays you pass are the right size. So for example a conversion from RGB to CMYK would need a from array of size three and a to array of size four. If the arrays are incorrectly sized then an exception will be thrown.
