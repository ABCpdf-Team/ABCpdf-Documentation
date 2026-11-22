# EntryWidth Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Width" entry of the type 6 halftone dictionary object. |

## Notes

Represents the "Width" entry of the type 6 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 131, page 310.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=318)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 129, page 372.](https://www.iso.org/standard/63534.html)

This value sets the number of columns in the threshold table. The stream body must contain exactly Width times Height bytes; a stream with a different length is malformed.

A wider cell can represent more complex dot shapes and screen angles, but it also uses more memory and takes longer to tile across a page. Very small cells repeat frequently and may produce visible repetition in textured areas.
