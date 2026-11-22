# EntryFields Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../../1440-fieldelement/index.md)`>` | null | No | Represents the "Fields" entry of the fdf template dictionary object. |

## Notes

Represents the "Fields" entry of the fdf template dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FieldElements](../../1440-fieldelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 249, page 464.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=472)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 252, page 562.](https://www.iso.org/standard/63534.html)

The fields array carries FDF field dictionaries containing the values to populate on the spawned page.
