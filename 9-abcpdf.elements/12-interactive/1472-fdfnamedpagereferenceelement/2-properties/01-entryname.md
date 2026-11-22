# EntryName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Name" entry of the fdf named page reference dictionary object. |

## Notes

Represents the "Name" entry of the fdf named page reference dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 250, page 464.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=472)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 253, page 562.](https://www.iso.org/standard/63534.html)

The name string identifies the target page by its named destination. The viewer resolves the name against the PDF's named destinations tree to find the specific page.
