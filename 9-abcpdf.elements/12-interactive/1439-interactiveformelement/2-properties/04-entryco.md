# EntryCO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../../1440-fieldelement/index.md)`>` | null | No | Represents the "CO" entry of the interactive form dictionary object. |

## Notes

Represents the "CO" entry of the interactive form dictionary object.

It is defined as part of the PDF 1.3 specification.

It contains an array which contains [FieldElements](../../1440-fieldelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=439)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 525.](https://www.iso.org/standard/63534.html)

The calculation order array lists field indirect references in the order that calculate actions must be executed when any field value changes.
