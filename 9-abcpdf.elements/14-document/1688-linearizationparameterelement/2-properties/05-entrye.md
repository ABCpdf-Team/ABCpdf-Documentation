# EntryE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "E" entry of the linearization parameter dictionary object. |

## Notes

Represents the "E" entry of the linearization parameter dictionary object.

It is a required entry defined as part of the PDF 1.2 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: f.1, page 680.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=688)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: f.1, page 877.](https://www.iso.org/standard/63534.html)

The E entry gives the byte offset of the end of the first page objects. A reader that has received bytes up to this offset has all the data needed to render the first page.
