# EntryParent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DocumentPartElement`](../index.md) | null | No | Represents the "Parent" entry of the dpart dictionary object. |

## Notes

Represents the "Parent" entry of the dpart dictionary object.

It is a required entry defined as part of the PDF 2.0 specification.

It contains a [DocumentPartElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 409, page 829.](https://www.iso.org/standard/63534.html)

The Parent entry references the parent document part node. Processors traverse parent links to determine the context of a document part within the larger hierarchy.
