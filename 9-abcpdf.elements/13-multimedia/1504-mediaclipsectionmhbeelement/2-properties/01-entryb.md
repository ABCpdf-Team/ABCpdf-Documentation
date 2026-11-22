# EntryB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MediaOffsetElement`](../../1509-mediaoffsetelement/index.md) | null | No | Represents the "B" entry of the media clip section mh/be dictionary object. |

## Notes

Represents the "B" entry of the media clip section mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [MediaOffsetElement](../../1509-mediaoffsetelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 278, page 496.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=504)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 289, page 621.](https://www.iso.org/standard/63534.html)

The B entry references the beginning offset dictionary for the clip section. The offset may be expressed as a time in seconds, a frame number, or a named marker in the media file.
