# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "F" entry of the windows launch parameter dictionary object. |

## Notes

Represents the "F" entry of the windows launch parameter dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 204, page 422.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=430)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 208, page 513.](https://www.iso.org/standard/63534.html)

The file name string is the path to the file to launch, supporting both slash and backslash separators.
