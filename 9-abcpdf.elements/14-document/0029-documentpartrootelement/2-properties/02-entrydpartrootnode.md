# EntryDPartRootNode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DocumentPartElement`](../../0028-documentpartelement/index.md) | null | No | Represents the "DPartRootNode" entry of the dpartroot dictionary object. |

## Notes

Represents the "DPartRootNode" entry of the dpartroot dictionary object.

It is a required entry defined as part of the PDF 2.0 specification.

It contains a [DocumentPartElement](../../0028-documentpartelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 408, page 829.](https://www.iso.org/standard/63534.html)

The DPartRootNode entry references the root node of the document part hierarchy tree. All document part nodes are descendants of this root, and processors begin traversal here.
