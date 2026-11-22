# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`WebCaptureCommandSettingsElement`](../../1634-webcapturecommandsettingselement/index.md) | null | No | Represents the "S" entry of the web capture command dictionary object. |

## Notes

Represents the "S" entry of the web capture command dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [WebCaptureCommandSettingsElement](../../1634-webcapturecommandsettingselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 357, page 625.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=633)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 393, page 805.](https://www.iso.org/standard/63534.html)

The S entry holds an array of source information dictionaries for all content retrieved by this command, one for each URL actually fetched.
