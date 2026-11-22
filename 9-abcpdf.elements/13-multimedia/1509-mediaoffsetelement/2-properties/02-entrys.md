# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "S" entry of the media offset dictionary object. |

## Notes

Represents the "S" entry of the media offset dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- T
- F
- M

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 285, page 501.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=509)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 296, page 627.](https://www.iso.org/standard/63534.html)

The S entry names the offset subtype: T for a time value in seconds, F for a frame number, or M for a named marker in the media file. The subtype determines which additional entry holds the actual offset value.
