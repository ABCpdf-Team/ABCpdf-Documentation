# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "F" entry of the movie dictionary object. |

## Notes

Represents the "F" entry of the movie dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 295, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 306, page 635.](https://www.iso.org/standard/63534.html)

The F entry holds a file specification for the movie file. The file may be embedded in the PDF or referenced as an external file by path or URL.
