# EntrySchema Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "Schema" entry of the namespace dictionary object. |

## Notes

Represents the "Schema" entry of the namespace dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 356, page 725.](https://www.iso.org/standard/63534.html)

The Schema entry references an associated file containing a schema for the namespace. The schema formally defines element types, permitted attributes, and their relationships.
