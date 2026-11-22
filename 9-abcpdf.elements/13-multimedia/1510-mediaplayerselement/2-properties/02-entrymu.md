# EntryMU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`MediaPlayerInfoElement`](../../1511-mediaplayerinfoelement/index.md)`>` | null | No | Represents the "MU" entry of the media players dictionary object. |

## Notes

Represents the "MU" entry of the media players dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [MediaPlayerInfoElements](../../1511-mediaplayerinfoelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 290, page 502.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=510)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 301, page 629.](https://www.iso.org/standard/63534.html)

The MU entry holds an array of media player info dictionaries for players that must be used to play this clip. If none of the listed players is available, the clip cannot be played.
