# EntryAnnots Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`AnnotationElement`](../../1391-annotationelement/index.md)`>` | null | No | Represents the "Annots" entry of the fdf dictionary object. |

## Notes

Represents the "Annots" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an array which contains [AnnotationElements](../../1391-annotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=467)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.](https://www.iso.org/standard/63534.html)

The annotations array carries annotation data for import into the target document. Each element is an FDF annotation dictionary that can create or update an annotation in the target.
