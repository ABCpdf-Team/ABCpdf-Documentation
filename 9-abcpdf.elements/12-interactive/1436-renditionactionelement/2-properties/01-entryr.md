# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RenditionElement`](../../../13-multimedia/1497-renditionelement/index.md) | null | No | Represents the "R" entry of the rendition action object. |

## Notes

Represents the "R" entry of the rendition action object.

It is defined as part of the PDF 1.0 specification.

It contains a [RenditionElement](../../../13-multimedia/1497-renditionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 214, page 428.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=436)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 218, page 520.](https://www.iso.org/standard/63534.html)

The rendition dictionary describes the media to be played. It is required for play operations (OP = 0) and may be absent for stop, pause, and resume operations.
