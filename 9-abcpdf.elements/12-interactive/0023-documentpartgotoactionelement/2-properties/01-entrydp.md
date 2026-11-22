# EntryDp Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DocumentPartElement`](../../../14-document/0028-documentpartelement/index.md) | null | No | Represents the "Dp" entry of the document part go-to action object. |

## Notes

Represents the "Dp" entry of the document part go-to action object.

It is a required entry defined as part of the PDF 2.0 specification.

It contains a [DocumentPartElement](../../../14-document/0028-documentpartelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 206, page 512.](https://www.iso.org/standard/63534.html)

The Dp entry references the target document part object within the same PDF file. Document parts are a PDF 2.0 feature that divides a large document into independently openable sections.
