# EntryUsage Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentUsageElement`](../../1240-optionalcontentusageelement/index.md) | null | No | Represents the "Usage" entry of the optional content group dictionary object. |

## Notes

Represents the "Usage" entry of the optional content group dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OptionalContentUsageElement](../../1240-optionalcontentusageelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 98, page 222.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=230)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 96, page 274.](https://www.iso.org/standard/63534.html)

The Usage dictionary holds sub-dictionaries that describe the real-world conditions under which this group should be on or off, such as a zoom level, a printing condition, a language, or a user role.

Conforming readers and processors that support automatic state setting consult these entries in response to specific events, setting group states to reflect the current context without user interaction.
