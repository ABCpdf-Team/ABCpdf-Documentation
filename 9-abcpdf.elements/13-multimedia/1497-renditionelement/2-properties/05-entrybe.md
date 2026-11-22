# EntryBE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "BE" entry of the rendition dictionary object. |

## Notes

Represents the "BE" entry of the rendition dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 266, page 489.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=497)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 277, page 613.](https://www.iso.org/standard/63534.html)

The BE entry references a best-effort parameter dictionary for this rendition. Parameters in this dictionary are applied when possible but do not prevent playback if they cannot be satisfied.
