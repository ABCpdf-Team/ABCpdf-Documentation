# MediaPlayerInfoElement Class

This class represents the media player info dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 291, page 503.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=511)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 302, page 630.](https://www.iso.org/standard/63534.html)

A media player info dictionary describes a specific media player application. It identifies the player by a software identifier and may carry player-specific parameters in must-honour and best-effort dictionaries.

The PID entry references a software identifier dictionary that names the player and specifies version constraints. The MH and BE entries carry must-honour and best-effort player-specific parameters.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaPlayerInfoElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaPlayerInfoElement](1-methods/01-mediaplayerinfoelement.md) | Create a new MediaPlayerInfoElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media player info dictionary object. |
| [EntryPID](2-properties/02-entrypid.md) | Represents the "PID" entry of the media player info dictionary object. |
| [EntryMH](2-properties/03-entrymh.md) | Represents the "MH" entry of the media player info dictionary object. |
| [EntryBE](2-properties/04-entrybe.md) | Represents the "BE" entry of the media player info dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
