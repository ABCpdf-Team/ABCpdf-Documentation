# EntryName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Name" entry of the optional content group dictionary object. |

## Notes

Represents the "Name" entry of the optional content group dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 98, page 222.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=230)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 96, page 274.](https://www.iso.org/standard/63534.html)

The Name string provides a human-readable label for the optional content group. This name is displayed in the viewer's layer panel, allowing users to identify and toggle the group's visibility.

Names need not be unique within a document, but using distinct names reduces user confusion in multi-group documents.
