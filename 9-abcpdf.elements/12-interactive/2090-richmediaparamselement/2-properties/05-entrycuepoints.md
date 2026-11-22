# EntryCuePoints Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`CuePointElement`](../../2092-cuepointelement/index.md)`>` | null | No | Represents the "CuePoints" entry of the richmediaparams dictionary object. |

## Notes

Represents the "CuePoints" entry of the richmediaparams dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains [CuePointElements](../../2092-cuepointelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51c, page 90.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=90)

The cue points array lists rich media cue point dictionaries, each marking a specific time position in the media with a name and an action to execute when playback reaches that point.
