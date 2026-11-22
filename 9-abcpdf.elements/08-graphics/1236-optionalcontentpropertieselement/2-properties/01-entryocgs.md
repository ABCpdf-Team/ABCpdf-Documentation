# EntryOCGs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`OptionalContentGroupElement`](../../1230-optionalcontentgroupelement/index.md)`>` | null | No | Represents the "OCGs" entry of the optional content properties dictionary object. |

## Notes

Represents the "OCGs" entry of the optional content properties dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [OptionalContentGroupElements](../../1230-optionalcontentgroupelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 100, page 228.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=236)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 98, page 281.](https://www.iso.org/standard/63534.html)

The OCGs array lists all optional content group objects in the document. Conforming readers use this list to discover every group and initialise their states according to the default configuration. Groups not in this list may be ignored.
