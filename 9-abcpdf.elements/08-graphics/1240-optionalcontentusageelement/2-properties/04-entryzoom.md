# EntryZoom Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentUsageZoomElement`](../../1240-optionalcontentusagezoomelement/index.md) | null | No | Represents the "Zoom" entry of the optional content usage dictionary object. |

## Notes

Represents the "Zoom" entry of the optional content usage dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OptionalContentUsageZoomElement](../../1240-optionalcontentusagezoomelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 285.](https://www.iso.org/standard/63534.html)

The Zoom sub-dictionary defines a magnification range for this group. It contains min and max entries giving the lower and upper magnification bounds. A viewer may turn the group off when the current zoom falls outside the range.
