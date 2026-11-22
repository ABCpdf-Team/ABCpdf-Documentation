# EntryIT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "IT" entry of the line annotation object. |

## Notes

Represents the "IT" entry of the line annotation object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- LineArrow
- LineDimension

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 398.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=406)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 483.](https://www.iso.org/standard/63534.html)

The intent type distinguishes a plain graphical line from a dimension line used in measurement workflows. Viewers may apply different rendering or interaction behaviour depending on the intent.
