# EntryON Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`OptionalContentGroupElement`](../../1230-optionalcontentgroupelement/index.md)`>` | null | No | Represents the "ON" entry of the optional content configuration dictionary object. |

## Notes

Represents the "ON" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [OptionalContentGroupElements](../../1230-optionalcontentgroupelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 229.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=237)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 281.](https://www.iso.org/standard/63534.html)

The ON array lists optional content groups that should be set to on regardless of the BaseState. Groups in this list are visible when this configuration is applied.
