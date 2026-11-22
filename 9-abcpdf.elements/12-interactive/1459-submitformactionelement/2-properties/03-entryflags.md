# EntryFlags Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Flags" entry of the submit-form action object. |

## Notes

Represents the "Flags" entry of the submit-form action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 236, page 452.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=460)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 239, page 548.](https://www.iso.org/standard/63534.html)

The flags integer's bit positions control the submission format and inclusion logic. Supported formats include URL-encoded FDF, XFDF, HTML form encoding, and full PDF submission.
