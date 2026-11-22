# EntryView Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentUsageViewElement`](../../1240-optionalcontentusageviewelement/index.md) | null | No | Represents the "View" entry of the optional content usage dictionary object. |

## Notes

Represents the "View" entry of the optional content usage dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OptionalContentUsageViewElement](../../1240-optionalcontentusageviewelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 233.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=241)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 285.](https://www.iso.org/standard/63534.html)

The View sub-dictionary controls whether this group is visible in an interactive viewer. It contains a ViewState entry of ON or OFF. This allows groups to be defined as print-only or screen-only.
