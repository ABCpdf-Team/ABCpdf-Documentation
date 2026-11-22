# EntryOverlayText Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "OverlayText" entry of the redaction annotation object. |

## Notes

Represents the "OverlayText" entry of the redaction annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 192, page 413.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=421)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 195, page 501.](https://www.iso.org/standard/63534.html)

After the redaction is applied this text is placed in the redacted area as replacement content, rendered using the DA and Q entries.
