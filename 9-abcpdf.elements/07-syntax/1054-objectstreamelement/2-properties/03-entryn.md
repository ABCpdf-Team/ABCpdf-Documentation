# EntryN Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "N" entry of the object stream dictionary object. |

## Notes

Represents the "N" entry of the object stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 16, page 46.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=54)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 16, page 61.](https://www.iso.org/standard/63534.html)

The N entry gives the number of indirect objects stored in the stream. The header section at the beginning of the decoded stream contains exactly N pairs of integers listing the object number and byte offset of each stored object.
