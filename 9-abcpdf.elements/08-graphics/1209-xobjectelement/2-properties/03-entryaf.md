# EntryAF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "AF" entry of the xobject object. |

## Notes

Represents the "AF" entry of the xobject object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 201.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=209)

The AF entry holds an array of file specification dictionaries for files associated with this XObject. Associated files may carry source data, accessibility alternatives, or supplementary information related to the XObject's content.

This entry was introduced in PDF 2.0 as part of the associated files mechanism. The relationship between the XObject and each file is described by the AFRelationship entry within each file specification.
