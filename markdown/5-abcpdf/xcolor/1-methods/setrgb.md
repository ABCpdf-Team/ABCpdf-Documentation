# SetRgb Function

Set the color to an RGB value.

## Syntax

```csharp
void SetRgb(int red, int green, int blue)<br> void SetRgb(int red, int green, int blue, int alpha)<br> void SetRgb(double red, double green, double blue)<br> void SetRgb(double red, double green, double blue, double alpha)
```

## Params

| Name | Description |
| --- | --- |
| red | The amount of red (0 to 255). |
| green | The amount of green (0 to 255). |
| blue | The amount of blue (0 to 255). |
| alpha | The level of opacity from transparent through to fully opaque (0 to 255). |

## Notes

Set the color to RGB and provide a value for it.

Optionally set the alpha value to specify a transparency level. If this parameter is omitted the color is set to fully opaque - no transparency.

