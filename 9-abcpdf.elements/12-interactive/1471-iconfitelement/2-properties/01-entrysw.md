# EntrySW Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "SW" entry of the icon fit dictionary object. |

## Notes

Represents the "SW" entry of the icon fit dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "A" if no value has been provided.

This item may take one of the following valid values:.

- A
- B
- S
- N

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 247, page 463.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=471)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 250, page 560.](https://www.iso.org/standard/63534.html)

The scale-when entry controls whether the icon is scaled: A (Always), B (only when bigger), S (only when smaller), or N (Never). Never preserves the icon at its native size.
