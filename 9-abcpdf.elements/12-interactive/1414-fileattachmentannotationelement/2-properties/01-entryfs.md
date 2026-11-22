# EntryFS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "FS" entry of the file attachment annotation object. |

## Notes

Represents the "FS" entry of the file attachment annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 184, page 406.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=414)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 187, page 492.](https://www.iso.org/standard/63534.html)

The file specification references the embedded file. The embedded file's data is stored in an EmbeddedFiles name tree entry or directly in a stream object within the PDF.
