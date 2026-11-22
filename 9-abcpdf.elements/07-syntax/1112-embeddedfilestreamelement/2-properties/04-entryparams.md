# EntryParams Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EmbeddedFileParameterElement`](../../1112-embeddedfileparameterelement/index.md) | null | No | Represents the "Params" entry of the embedded file stream dictionary object. |

## Notes

Represents the "Params" entry of the embedded file stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [EmbeddedFileParameterElement](../../1112-embeddedfileparameterelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 45, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 44, page 136.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 244, page 460.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=468)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 247, page 558.](https://www.iso.org/standard/63534.html)

The Params entry references an embedded file parameter dictionary that holds metadata about the embedded file: its uncompressed size, creation and modification dates, and an MD5 checksum.
