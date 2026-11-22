# MediaPlayersElement Class

This class represents the media players dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 290, page 502.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=510)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 301, page 629.](https://www.iso.org/standard/63534.html)

A media players dictionary lists the media players that are acceptable or required for playing a specific media clip. A conforming reader consults this list when selecting a player for playback.

The MU entry holds an array of software identifier dictionaries for players that must be used. The A entry holds an array of software identifiers for players that are acceptable. The NU entry holds an array for players that must not be used.

If none of the acceptable players is available and the MU list is empty, the clip cannot be played. The player selection system allows fine-grained control over which software is used for sensitive or format-specific media.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaPlayersElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaPlayersElement](1-methods/01-mediaplayerselement.md) | Create a new MediaPlayersElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media players dictionary object. |
| [EntryMU](2-properties/02-entrymu.md) | Represents the "MU" entry of the media players dictionary object. |
| [EntryA](2-properties/03-entrya.md) | Represents the "A" entry of the media players dictionary object. |
| [EntryNU](2-properties/04-entrynu.md) | Represents the "NU" entry of the media players dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
