# EntryUser Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentUsageUserElement`](../../1240-optionalcontentusageuserelement/index.md) | null | No | Represents the "User" entry of the optional content usage dictionary object. |

## Notes

Represents the "User" entry of the optional content usage dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OptionalContentUsageUserElement](../../1240-optionalcontentusageuserelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 233.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=241)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 285.](https://www.iso.org/standard/63534.html)

The User sub-dictionary restricts this group to a specific user type or named user. It contains a Type entry (Ind for individual or Grp for group) and a Name entry with one or more user identifiers.
