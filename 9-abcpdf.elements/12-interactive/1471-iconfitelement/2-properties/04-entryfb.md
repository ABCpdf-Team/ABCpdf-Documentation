# EntryFB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "FB" entry of the icon fit dictionary object. |

## Notes

Represents the "FB" entry of the icon fit dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 247, page 463.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=471)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 250, page 561.](https://www.iso.org/standard/63534.html)

When true the available rectangle for icon fitting is inset by the border width before alignment fractions are applied, so the icon aligns relative to the inside of the border.
