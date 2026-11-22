# EntryAF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "AF" entry of the structure element dictionary object. |

## Notes

Represents the "AF" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.](https://www.iso.org/standard/63534.html)

The AF entry holds an array of file specification dictionaries for files associated with this specific structure element, allowing supplementary data to be attached at the element level.
