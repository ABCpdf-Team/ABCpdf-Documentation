# EntryFields Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../../1440-fieldelement/index.md)`>` | null | No | Represents the "Fields" entry of the reset-form action object. |

## Notes

Represents the "Fields" entry of the reset-form action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FieldElements](../../1440-fieldelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 238, page 455.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=463)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 241, page 552.](https://www.iso.org/standard/63534.html)

The fields list contains indirect references to field dictionaries. Bit 1 of the Flags entry determines whether listed fields are reset (Include, bit = 0) or all others are reset (Exclude, bit = 1).
