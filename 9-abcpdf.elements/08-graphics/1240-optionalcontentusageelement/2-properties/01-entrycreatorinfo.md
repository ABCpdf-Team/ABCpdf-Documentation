# EntryCreatorInfo Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentUsageCreatorElement`](../../1240-optionalcontentusagecreatorelement/index.md) | null | No | Represents the "CreatorInfo" entry of the optional content usage dictionary object. |

## Notes

Represents the "CreatorInfo" entry of the optional content usage dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OptionalContentUsageCreatorElement](../../1240-optionalcontentusagecreatorelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The CreatorInfo sub-dictionary identifies the application that created the usage data and describes what kind of content the optional content group represents. It contains a Creator string and a Subtype name.
