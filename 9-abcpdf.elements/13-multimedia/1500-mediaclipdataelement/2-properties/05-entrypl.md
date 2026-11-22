# EntryPL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MediaPlayersElement`](../../1510-mediaplayerselement/index.md) | null | No | Represents the "PL" entry of the media clip data dictionary object. |

## Notes

Represents the "PL" entry of the media clip data dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [MediaPlayersElement](../../1510-mediaplayerselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 274, page 493.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=501)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 285, page 617.](https://www.iso.org/standard/63534.html)

The PL entry references a media players dictionary listing the media players that are acceptable or required for this clip. A reader consults this list when selecting a player.
