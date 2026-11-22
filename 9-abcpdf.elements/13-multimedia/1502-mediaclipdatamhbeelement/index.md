# MediaClipDataMhBeElement Class

This class represents the media clip data mh/be dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 276, page 494.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=502)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 287, page 619.](https://www.iso.org/standard/63534.html)

A media clip data must-honour or best-effort dictionary carries parameters that apply specifically to the media clip data. The BU entry provides a base URL used to resolve relative URLs within the media content.

Parameters in a must-honour dictionary block playback if they cannot be satisfied. The BU base URL is particularly important for media that references relative resources such as stylesheets or sub-clips.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaClipDataMhBeElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaClipDataMhBeElement](1-methods/01-mediaclipdatamhbeelement.md) | Create a new MediaClipDataMhBeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryBU](2-properties/01-entrybu.md) | Represents the "BU" entry of the media clip data mh/be dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
