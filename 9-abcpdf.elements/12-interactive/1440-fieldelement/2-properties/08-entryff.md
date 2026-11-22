# EntryFf Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Ff" entry of the field dictionary object. |

## Notes

Represents the "Ff" entry of the field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 433.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=441)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=442)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.](https://www.iso.org/standard/63534.html)

The flags integer uses bit positions to control field behaviour. Bit 1 (ReadOnly), bit 2 (Required), and bit 3 (NoExport) are common to all field types; further bits are type-specific.
