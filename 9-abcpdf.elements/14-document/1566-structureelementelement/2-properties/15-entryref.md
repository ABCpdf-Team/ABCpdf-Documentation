# EntryRef Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`StructureElementElement`](../index.md)`>` | null | No | Represents the "Ref" entry of the structure element dictionary object. |

## Notes

Represents the "Ref" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [StructureElementElements](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 721.](https://www.iso.org/standard/63534.html)

The Ref entry holds an array of indirect references to logically related structure elements, such as a footnote reference and its footnote, or a caption and the figure it describes.
