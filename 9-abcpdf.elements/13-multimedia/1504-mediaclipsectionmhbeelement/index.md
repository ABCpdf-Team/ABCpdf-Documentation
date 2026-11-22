# MediaClipSectionMhBeElement Class

This class represents the media clip section mh/be dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 278, page 496.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=504)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 289, page 621.](https://www.iso.org/standard/63534.html)

A media clip section must-honour or best-effort dictionary specifies the start and end time offsets for a media clip section. The B entry holds the beginning offset and the E entry holds the ending offset, each as a media offset dictionary.

Offsets may be specified as a time value in seconds, as a frame number, or as a named marker in the media file. The offset type is determined by the subtype of the media offset dictionary referenced.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaClipSectionMhBeElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaClipSectionMhBeElement](1-methods/01-mediaclipsectionmhbeelement.md) | Create a new MediaClipSectionMhBeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryB](2-properties/01-entryb.md) | Represents the "B" entry of the media clip section mh/be dictionary object. |
| [EntryE](2-properties/02-entrye.md) | Represents the "E" entry of the media clip section mh/be dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
