# EntryEmbeddedFDFs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "EmbeddedFDFs" entry of the fdf dictionary object. |

## Notes

Represents the "EmbeddedFDFs" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 460.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=468)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 557.](https://www.iso.org/standard/63534.html)

Each element of the embedded FDFs array is a file specification referencing another FDF file embedded in this one, carrying field data, pages, or annotations for different target documents.
