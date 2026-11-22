# EntryFD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "FD" entry of the number format dictionary object. |

## Notes

Represents the "FD" entry of the number format dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 263, page 482.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=490)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 268, page 596.](https://www.iso.org/standard/63534.html)

When true trailing zeros after the decimal point are suppressed. When false zeros are retained to the precision implied by the D entry.
