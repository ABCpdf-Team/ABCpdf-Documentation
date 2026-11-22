# MediaClipDataElement Class

This class represents the media clip data dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 274, page 492.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=500)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 285, page 617.](https://www.iso.org/standard/63534.html)

A media clip data dictionary identifies the actual media content for playback. It references the media data through a file specification or URL, specifies the MIME content type of the data, and may carry player-specific parameters and permissions information.

The D entry holds the media data itself, either as a file specification for embedded or external media, or as a URL string. The CT entry names the MIME type of the data, which helps a reader select an appropriate media player.

The P entry references a media permissions dictionary that controls whether the media may be played by an external player and whether temporary files may be created. The Alt entry provides alternate text descriptions of the media for accessibility.

The PL entry references a media players dictionary listing the media players required or preferred for this clip. The MH and BE entries carry must-honour and best-effort clip data parameters.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.MediaClipElement`](../1500-mediaclipelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.MediaClipDataElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaClipDataElement](1-methods/01-mediaclipdataelement.md) | Create a new MediaClipDataElement. |
|  | [inherited methods...](../1500-mediaclipelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryD](2-properties/01-entryd.md) | Represents the "D" entry of the media clip data dictionary object. |
| [EntryCT](2-properties/02-entryct.md) | Represents the "CT" entry of the media clip data dictionary object. |
| [EntryP](2-properties/03-entryp.md) | Represents the "P" entry of the media clip data dictionary object. |
| [EntryAlt](2-properties/04-entryalt.md) | Represents the "Alt" entry of the media clip data dictionary object. |
| [EntryPL](2-properties/05-entrypl.md) | Represents the "PL" entry of the media clip data dictionary object. |
| [EntryMH](2-properties/06-entrymh.md) | Represents the "MH" entry of the media clip data dictionary object. |
| [EntryBE](2-properties/07-entrybe.md) | Represents the "BE" entry of the media clip data dictionary object. |
|  | [inherited properties...](../1500-mediaclipelement/index.md) |
