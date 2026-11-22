# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`TimespanElement`](../../1510-timespanelement/index.md) | null | No | Represents the "T" entry of the media offset time dictionary object. |

## Notes

Represents the "T" entry of the media offset time dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [TimespanElement](../../1510-timespanelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 286, page 501.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=509)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 297, page 627.](https://www.iso.org/standard/63534.html)

The T entry references a timespan dictionary giving the time offset. The media player seeks to this time position within the clip when the offset is applied.
