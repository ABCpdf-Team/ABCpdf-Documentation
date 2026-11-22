# EntryK Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`StructureElementElement`](../../1566-structureelementelement/index.md)`>` | null | No | Represents the "K" entry of the structure tree root object. |

## Notes

Represents the "K" entry of the structure tree root object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [StructureElementElements](../../1566-structureelementelement/index.md).

If you read the specification you will see that an array of one [StructureElementElement](../../1566-structureelementelement/index.md) may be represented as a single [StructureElementElement](../../1566-structureelementelement/index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 719.](https://www.iso.org/standard/63534.html)

The K entry references the top-level structure element or an array of top-level structure elements. All other structure elements in the document descend from these roots.
