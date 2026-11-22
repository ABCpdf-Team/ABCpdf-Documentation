# EntryMH Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "MH" entry of the media clip data dictionary object. |

## Notes

Represents the "MH" entry of the media clip data dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 274, page 493.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=501)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 285, page 617.](https://www.iso.org/standard/63534.html)

The MH entry references a must-honour clip data parameter dictionary. Parameters here must be satisfied for the clip to be played, such as the base URL for resolving relative references in the media content.
