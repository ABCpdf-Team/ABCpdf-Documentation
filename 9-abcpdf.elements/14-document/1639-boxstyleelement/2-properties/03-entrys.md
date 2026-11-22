# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "S" entry of the box style dictionary object. |

## Notes

Represents the "S" entry of the box style dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "S" if no value has been provided.

This item may take one of the following valid values:.

- S
- D

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 361, page 631.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=639)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 397, page 811.](https://www.iso.org/standard/63534.html)

The S entry names the line style: S for solid or D for dashed. A dashed style is typically used to distinguish guide lines from content boundaries.
