# EntryCharSet Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CharSet" entry of the submit-form action object. |

## Notes

Represents the "CharSet" entry of the submit-form action object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 236, page 451.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=459)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 239, page 548.](https://www.iso.org/standard/63534.html)

The CharSet string (PDF 2.0) specifies the character encoding for submitted text data, such as UTF-8 or ISO-8859-1, preventing garbled data on servers strict about character set declarations.
