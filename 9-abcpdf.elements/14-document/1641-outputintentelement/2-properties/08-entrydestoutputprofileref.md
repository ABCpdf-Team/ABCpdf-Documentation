# EntryDestOutputProfileRef Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OutputProfilesElement`](../../0031-outputprofileselement/index.md) | null | No | Represents the "DestOutputProfileRef" entry of the output intent dictionary object. |

## Notes

Represents the "DestOutputProfileRef" entry of the output intent dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an [OutputProfilesElement](../../0031-outputprofileselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 365, page 633.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=641)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 401, page 815.](https://www.iso.org/standard/63534.html)

The DestOutputProfileRef entry, introduced in PDF 2.0, references an output profile defined elsewhere in the document rather than embedding it directly, allowing multiple output intents to share one profile.
