# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "T" entry of the movie annotation object. |

## Notes

Represents the "T" entry of the movie annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 186, page 407.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=415)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 189, page 493.](https://www.iso.org/standard/63534.html)

The title string is used by movie actions to identify this annotation by name rather than indirect reference. It must be unique among movie annotations for name-based targeting to work reliably.
