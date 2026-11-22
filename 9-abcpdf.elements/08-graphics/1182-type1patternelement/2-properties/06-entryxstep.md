# EntryXStep Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "XStep" entry of the type 1 pattern dictionary object. |

## Notes

Represents the "XStep" entry of the type 1 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 175.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=183)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 218.](https://www.iso.org/standard/63534.html)

XStep defines the horizontal offset in pattern space between successive repetitions of the pattern cell. It may differ from the width of the BBox; if larger, a gap appears between tiles; if smaller, tiles overlap.
