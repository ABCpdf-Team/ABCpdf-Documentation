# EntryAF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "AF" entry of the dpart dictionary object. |

## Notes

Represents the "AF" entry of the dpart dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 409, page 830.](https://www.iso.org/standard/63534.html)

The AF entry holds an array of file specification dictionaries for associated files linked to this document part, independently of document-level or page-level associated files.
