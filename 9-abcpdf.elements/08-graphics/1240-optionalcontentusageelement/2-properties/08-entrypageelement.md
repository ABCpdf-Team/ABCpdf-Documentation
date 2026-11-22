# EntryPageElement Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentUsagePageElement`](../../1240-optionalcontentusagepageelement/index.md) | null | No | Represents the "PageElement" entry of the optional content usage dictionary object. |

## Notes

Represents the "PageElement" entry of the optional content usage dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OptionalContentUsagePageElement](../../1240-optionalcontentusagepageelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 233.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=241)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 285.](https://www.iso.org/standard/63534.html)

The PageElement sub-dictionary marks this group as representing a specific structural page element type, such as a running header or footer. It contains a Subtype name identifying the element. Layout tools use this to manage repeating structural content.
