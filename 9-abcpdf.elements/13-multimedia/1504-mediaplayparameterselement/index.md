# MediaPlayParametersElement Class

This class represents the media play parameters dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 279, page 496.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=504)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 290, page 621.](https://www.iso.org/standard/63534.html)

A media play parameters dictionary carries parameters that control how media is played back. It contains PL, MH, and BE entries that hold the actual playback settings.

The PL entry references a player-list dictionary specifying which media players are acceptable. The MH and BE entries reference must-honour and best-effort play parameter dictionaries that carry volume, repeat count, duration, and other settings.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaPlayParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaPlayParametersElement](1-methods/01-mediaplayparameterselement.md) | Create a new MediaPlayParametersElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media play parameters dictionary object. |
| [EntryPL](2-properties/02-entrypl.md) | Represents the "PL" entry of the media play parameters dictionary object. |
| [EntryMH](2-properties/03-entrymh.md) | Represents the "MH" entry of the media play parameters dictionary object. |
| [EntryBE](2-properties/04-entrybe.md) | Represents the "BE" entry of the media play parameters dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
