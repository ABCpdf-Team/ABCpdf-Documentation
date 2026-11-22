# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "S" entry of the border style dictionary object. |

## Notes

Represents the "S" entry of the border style dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- S
- D
- B
- I
- U

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 166, page 387.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=395)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 168, page 470.](https://www.iso.org/standard/63534.html)

The style name selects the border appearance. Solid draws a continuous line; Dashed uses the D dash pattern; Beveled draws a simulated raised 3D border; Inset draws a simulated sunken 3D border; Underline draws only a line at the rectangle bottom.
