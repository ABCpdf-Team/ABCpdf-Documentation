# EntryN Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "N" entry of the target dictionary object. |

## Notes

Represents the "N" entry of the target dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 202, page 420.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=428)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 205, page 510.](https://www.iso.org/standard/63534.html)

For a child target the name is the file specification name under which the embedded child file is stored, matching the key in the embedded files name tree.
