# EntryFields Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FDFFieldElement`](../../1469-fdffieldelement/index.md)`>` | null | No | Represents the "Fields" entry of the fdf dictionary object. |

## Notes

Represents the "Fields" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FDFFieldElements](../../1469-fdffieldelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=467)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.](https://www.iso.org/standard/63534.html)

The fields array contains FDF field dictionaries carrying the values to import. The structure mirrors the AcroForm field tree but needs to include only the fields being transferred.
