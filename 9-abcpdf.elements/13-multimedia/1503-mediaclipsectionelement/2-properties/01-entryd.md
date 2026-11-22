# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MediaClipSectionElement`](../index.md) | null | No | Represents the "D" entry of the media clip section dictionary object. |

## Notes

Represents the "D" entry of the media clip section dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [MediaClipSectionElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 277, page 495.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=503)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 288, page 620.](https://www.iso.org/standard/63534.html)

The D entry references the source media clip dictionary from which this section is taken. The section plays the portion of the source clip defined by the start and end offsets in the MhBe parameter dictionaries.
