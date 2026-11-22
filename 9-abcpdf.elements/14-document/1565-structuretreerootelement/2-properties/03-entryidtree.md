# EntryIDTree Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../../07-syntax/1097-nametreenodeelement_t_/index.md)`<`[`StructureElementElement`](../../1566-structureelementelement/index.md)`>` | null | No | Represents the "IDTree" entry of the structure tree root object. |

## Notes

Represents the "IDTree" entry of the structure tree root object.

It is defined as part of the PDF 1.0 specification.

It contains a [NameTreeNodeElement](../../../07-syntax/1097-nametreenodeelement_t_/index.md) containing [StructureElementElements](../../1566-structureelementelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 719.](https://www.iso.org/standard/63534.html)

The IDTree entry references the root of a name tree mapping element identifier strings to structure element objects. Any element with an ID entry can be located directly by its identifier.
