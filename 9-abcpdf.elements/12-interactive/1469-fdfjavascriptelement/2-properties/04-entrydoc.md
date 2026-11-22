# EntryDoc Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Doc" entry of the fdf javascript dictionary object. |

## Notes

Represents the "Doc" entry of the fdf javascript dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 245, page 461.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=469)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 248, page 558.](https://www.iso.org/standard/63534.html)

The Doc entry is an array of alternating name-script pairs. Each pair adds one named script to the target document's JavaScript name tree, persisting as a document-level script after import.
