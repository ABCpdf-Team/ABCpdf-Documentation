# Equals Function

Test whether the two colors are effectively  the same

## Syntax

[C#]

```csharp
bool Equals(<a href="../default.htm">XColor</a> other)override bool Equals(object obj)
```

## Params

| **Name** | **Description** |
| --- | --- |
| other | The color to test against. |
| obj | The object to test against. |
| return | Whether the two colors are the same. |

## Notes

Test whether the two colors are effectively the same.

Colors are considered equal if they have the same [ColorSpace](2-properties/colorspace.md), the same number and values of color [Components](2-properties/components.md) and the same [Name](2-properties/name.md). This represents value equality for the colors in question.

The underlying components of a color are represented as floating point numbers. Floating point numbers are subject to rounding errors, so there has to be a degree of latitude when comparing color values. The degree of latitude is, by default, determined by the color space. CMYK values use a percentage based scale so the value used to determine the resolution of the comparison is 1%. Other color spaces use an eight bit scale so the resolution of comparison is 1/256.

## Example

None
