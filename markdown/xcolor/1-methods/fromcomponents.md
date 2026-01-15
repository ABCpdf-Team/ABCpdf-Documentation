# FromComponents Function

Create an XColor from a set of  PDF  components in the generic ColorSpace color space.

## Syntax

```csharp
static <a href="../default.htm">XColor</a> FromComponents(double value1)<br> static <a href="../default.htm">XColor</a> FromComponents(double value1, double value2)<br> static <a href="../default.htm">XColor</a> FromComponents(double value1, double value2, double value3)<br> static <a href="../default.htm">XColor</a> FromComponents(double value1, double value2, double value3, double value4)
```

## Params

| Name | Description |
| --- | --- |
| value1 | The intensity of the first component (typically 0 to 1) |
| value2 | The intensity of the second component (typically 0 to 1) |
| value3 | The intensity of the third component (typically 0 to 1) |
| value4 | The intensity of the fourth component (typically 0 to 1) |
| return | The resulting XColor. |

## Notes

Create an XColor from a set of PDF components in the generic ColorSpace color space.

PDF color components typically range between zero - no intensity - and one - 100% intensity. However this is not always the case. For color spaces such as Lab the components may take a wider range of values.

