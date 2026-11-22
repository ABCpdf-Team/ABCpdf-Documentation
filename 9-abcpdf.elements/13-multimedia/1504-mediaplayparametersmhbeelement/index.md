# MediaPlayParametersMhBeElement Class

This class represents the media play parameters mh/be dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 280, page 496.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=504)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 291, page 622.](https://www.iso.org/standard/63534.html)

A media play parameters must-honour or best-effort dictionary carries the actual settings that control media playback behaviour.

The V entry controls audio volume as a multiplier relative to the system volume, where 1.0 is normal volume. The C entry, when true, causes the viewer to display player controls such as play, pause, and stop buttons.

The F entry controls what the player does when playback finishes: keep the last frame displayed, rewind to the beginning, or repeat the play. The D entry overrides the clip duration with a fixed playback duration.

The A entry, when true, causes the media to start playing automatically when the annotation is activated. The RC entry specifies a repeat count for looping playback.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaPlayParametersMhBeElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaPlayParametersMhBeElement](1-methods/01-mediaplayparametersmhbeelement.md) | Create a new MediaPlayParametersMhBeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryV](2-properties/01-entryv.md) | Represents the "V" entry of the media play parameters mh/be dictionary object. |
| [EntryC](2-properties/02-entryc.md) | Represents the "C" entry of the media play parameters mh/be dictionary object. |
| [EntryF](2-properties/03-entryf.md) | Represents the "F" entry of the media play parameters mh/be dictionary object. |
| [EntryD](2-properties/04-entryd.md) | Represents the "D" entry of the media play parameters mh/be dictionary object. |
| [EntryA](2-properties/05-entrya.md) | Represents the "A" entry of the media play parameters mh/be dictionary object. |
| [EntryRC](2-properties/06-entryrc.md) | Represents the "RC" entry of the media play parameters mh/be dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
