# EntryBM Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "BM" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "BM" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- Normal
- Compatible
- Multiply
- Screen
- Overlay
- Darken
- Lighten
- ColorDodge
- ColorBurn
- HardLight
- SoftLight
- Difference
- Exclusion
- Hue
- Saturation
- Color
- Luminosity

.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=138)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.](https://www.iso.org/standard/63534.html)

The blend mode determines how a source object's color combines with the backdrop when compositing. The standard modes include Normal, Multiply, Screen, Overlay, Darken, Lighten, ColorDodge, ColorBurn, HardLight, SoftLight, Difference, Exclusion, Hue, Saturation, Color, and Luminosity.

Normal mode replaces the backdrop with the source color modulated by alpha. Other modes compute a blend formula that mixes source and backdrop in different ways, enabling artistic effects and photographic corrections.

The blend mode applies within a transparency group. Objects outside a group composite normally before being composited into the parent context.
