# EntryWidth Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Width" entry of the type 16 halftone dictionary object. |

## Notes

Represents the "Width" entry of the type 16 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=322)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 376.](https://www.iso.org/standard/63534.html)

This value sets the column count of the first threshold array. Because each sample is two bytes, the first array alone occupies Width times Height times two bytes in the stream.

If a second array is also present, it begins immediately after the first in the stream body and has its own dimensions given by Width2 and Height2. Width applies only to the first array.
