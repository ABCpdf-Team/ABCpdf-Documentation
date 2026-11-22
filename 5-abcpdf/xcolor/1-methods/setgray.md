# SetGray Function

Set the color to a grayscale value.

## Syntax

```csharp
void SetGray(int gray)
void SetGray(int gray, int alpha)
void SetGray(double gray)
void SetGray(double gray, double alpha)
```

## Params

| Name | Description |
| :---: | --- |
| gray | The amount of black (0 to 255). |
| alpha | The level of opacity from transparent through to fully opaque (0 to 255). |

## Notes

Set the color to grayscale and provide a value for it.

Optionally set the alpha value to specify a transparency level. If this parameter is omitted the color is set to fully opaque - no transparency.
