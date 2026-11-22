# MediaOffsetElement Class

This class represents the media offset dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 285, page 501.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=509)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 296, page 627.](https://www.iso.org/standard/63534.html)

A media offset dictionary specifies a position within a media clip, used to set the start and end boundaries of a media clip section. The S entry names the offset subtype, which determines how the position is expressed.

Offset subtypes are T for a time value in seconds, F for a frame number, and M for a named marker in the media file. The actual offset value is carried in a subtype-specific dictionary.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaOffsetElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.MediaOffsetFrameElement`](../1509-mediaoffsetframeelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MediaOffsetMarkerElement`](../1509-mediaoffsetmarkerelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MediaOffsetTimeElement`](../1509-mediaoffsettimeelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [MediaOffsetElement](1-methods/01-mediaoffsetelement.md) | Create a new MediaOffsetElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media offset dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the media offset dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
