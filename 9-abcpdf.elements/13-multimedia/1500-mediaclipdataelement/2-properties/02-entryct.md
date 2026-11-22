# EntryCT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CT" entry of the media clip data dictionary object. |

## Notes

Represents the "CT" entry of the media clip data dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 274, page 492.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=500)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 285, page 617.](https://www.iso.org/standard/63534.html)

The CT entry holds the MIME content type of the media data as a byte string, such as video/mp4 or audio/mpeg. The reader uses this to identify a suitable player.
