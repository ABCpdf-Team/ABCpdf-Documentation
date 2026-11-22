# EntryRI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "RI" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "RI" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- AbsoluteColorimetric
- RelativeColorimetric
- Saturation
- Perceptual

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=136)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The rendering intent names the algorithm used to map colors from one gamut to another during color conversion. The four defined intents are AbsoluteColorimetric, RelativeColorimetric, Saturation, and Perceptual.

Perceptual intent compresses the source gamut to fit the destination, preserving relative color relationships. Saturation intent prioritises vivid colors over accuracy. The colorimetric intents preserve in-gamut colors exactly, differing only in how the white point is handled.
