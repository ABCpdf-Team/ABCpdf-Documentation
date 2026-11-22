# EntryWidths Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Widths" entry of the type 3 font dictionary object. |

## Notes

Represents the "Widths" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=267)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.](https://www.iso.org/standard/63534.html)

Each width in the array matches a character code from FirstChar to LastChar and gives the advance width in glyph space units. These widths are transformed to text space by the FontMatrix.

The widths here should match the widths reported by the d0 or d1 operators in the glyph streams. Inconsistencies between the two can cause misaligned text rendering.
