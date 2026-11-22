# EntryTemplates Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FDFTemplateElement`](../../1472-fdftemplateelement/index.md)`>` | null | No | Represents the "Templates" entry of the fdf page dictionary object. |

## Notes

Represents the "Templates" entry of the fdf page dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FDFTemplateElements](../../1472-fdftemplateelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 248, page 463.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=471)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 251, page 561.](https://www.iso.org/standard/63534.html)

The templates array lists the FDF template dictionaries describing pages to be spawned into the target document. Each template references a named page in a source PDF.
