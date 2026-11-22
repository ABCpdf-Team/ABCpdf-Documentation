# MediaRenditionElement Class

This class represents the media rendition dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 271, page 491.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=499)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 282, page 615.](https://www.iso.org/standard/63534.html)

A media rendition dictionary is the primary rendition type that specifies the actual media content to be played. It references a media clip dictionary that identifies the media data, a media play parameters dictionary that controls playback behaviour, and a media screen parameters dictionary that controls where and how the media appears on screen.

The C entry references the media clip dictionary, which identifies the source of the media data either as an embedded or external file.

The P entry references the media play parameters dictionary, which controls volume, duration, rate, and other playback settings.

The SP entry references the media screen parameters dictionary, which controls the display window size, position, style, and background.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.RenditionElement`](../1497-renditionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.MediaRenditionElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaRenditionElement](1-methods/01-mediarenditionelement.md) | Create a new MediaRenditionElement. |
|  | [inherited methods...](../1497-renditionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryC](2-properties/01-entryc.md) | Represents the "C" entry of the media rendition dictionary object. |
| [EntryP](2-properties/02-entryp.md) | Represents the "P" entry of the media rendition dictionary object. |
| [EntrySP](2-properties/03-entrysp.md) | Represents the "SP" entry of the media rendition dictionary object. |
|  | [inherited properties...](../1497-renditionelement/index.md) |
