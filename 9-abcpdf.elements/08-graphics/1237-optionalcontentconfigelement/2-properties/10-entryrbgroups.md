# EntryRBGroups Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "RBGroups" entry of the optional content configuration dictionary object. |

## Notes

Represents the "RBGroups" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 230.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=238)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 283.](https://www.iso.org/standard/63534.html)

The RBGroups array defines radio-button group sets. Each element is an array of OCG references; within one set, turning any group on automatically turns all others in the same set off. This enforces mutually exclusive layer selection.
