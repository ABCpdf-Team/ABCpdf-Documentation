# EntryNU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`MediaPlayerInfoElement`](../../1511-mediaplayerinfoelement/index.md)`>` | null | No | Represents the "NU" entry of the media players dictionary object. |

## Notes

Represents the "NU" entry of the media players dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [MediaPlayerInfoElements](../../1511-mediaplayerinfoelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 290, page 502.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=510)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 301, page 629.](https://www.iso.org/standard/63534.html)

The NU entry holds an array of media player info dictionaries for players that must not be used. Any player matching an entry in this list is excluded from consideration even if it would otherwise be acceptable.
