# EntryLength3 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Length3" entry of the embedded font stream dictionary object. |

## Notes

Represents the "Length3" entry of the embedded font stream dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 127, page 290.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=298)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 125, page 350.](https://www.iso.org/standard/63534.html)

For Type 1 programs only, this gives the length of the fixed-content section that follows the encrypted section. This section typically consists of zeros and is required to complete the Type 1 format.

A value of zero means the fixed-content section is absent.
