# MediaClipElement Class

This class represents the media clip dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 273, page 492.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=500)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 284, page 617.](https://www.iso.org/standard/63534.html)

A media clip dictionary is the base type for objects that identify media content. The S entry names the subtype: MCD for media clip data (a single media source) or MCS for media clip section (a time-delimited portion of another clip).

The N entry holds a human-readable name for the media clip, used in user interface elements and in rendition action references.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaClipElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.MediaClipDataElement`](../1500-mediaclipdataelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MediaClipSectionElement`](../1503-mediaclipsectionelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [MediaClipElement](1-methods/01-mediaclipelement.md) | Create a new MediaClipElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media clip dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the media clip dictionary object. |
| [EntryN](2-properties/03-entryn.md) | Represents the "N" entry of the media clip dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
