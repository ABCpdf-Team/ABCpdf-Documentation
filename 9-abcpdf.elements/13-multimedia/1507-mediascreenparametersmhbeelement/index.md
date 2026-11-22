# MediaScreenParametersMhBeElement Class

This class represents the media screen parameters mh/be dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 283, page 499.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=507)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 294, page 624.](https://www.iso.org/standard/63534.html)

A media screen parameters must-honour or best-effort dictionary carries the actual settings controlling the media display window.

The W entry controls the window size policy: how the playback window relates to the annotation rectangle and the media content dimensions. Common options are to use the annotation rectangle, fit the media content, or use a specified floating window.

The B entry specifies the background colour of the window behind the media content. The O entry controls the opacity of the background.

The M entry specifies which monitor the window appears on when multiple monitors are present. The F entry holds a floating window parameters dictionary when the media plays in a floating window.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaScreenParametersMhBeElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaScreenParametersMhBeElement](1-methods/01-mediascreenparametersmhbeelement.md) | Create a new MediaScreenParametersMhBeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryW](2-properties/01-entryw.md) | Represents the "W" entry of the media screen parameters mh/be dictionary object. |
| [EntryB](2-properties/02-entryb.md) | Represents the "B" entry of the media screen parameters mh/be dictionary object. |
| [EntryO](2-properties/03-entryo.md) | Represents the "O" entry of the media screen parameters mh/be dictionary object. |
| [EntryM](2-properties/04-entrym.md) | Represents the "M" entry of the media screen parameters mh/be dictionary object. |
| [EntryF](2-properties/05-entryf.md) | Represents the "F" entry of the media screen parameters mh/be dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
