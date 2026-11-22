# EntryDA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "DA" entry of the redaction annotation object. |

## Notes

Represents the "DA" entry of the redaction annotation object.

It is defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 192, page 413.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=421)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 195, page 501.](https://www.iso.org/standard/63534.html)

The default appearance string specifies the font, size, and colour used to render the overlay text, using the same content-stream syntax as the DA entry in form fields.
