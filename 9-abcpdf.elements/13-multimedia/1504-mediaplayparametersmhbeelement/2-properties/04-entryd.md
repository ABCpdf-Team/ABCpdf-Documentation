# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MediaDurationElement`](../../1506-mediadurationelement/index.md) | null | No | Represents the "D" entry of the media play parameters mh/be dictionary object. |

## Notes

Represents the "D" entry of the media play parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [MediaDurationElement](../../1506-mediadurationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 280, page 497.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=505)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 291, page 622.](https://www.iso.org/standard/63534.html)

The D entry references a media duration dictionary that overrides the clip natural duration, setting a fixed playback length that may be shorter or longer than the media content.
