# RenditionElement Class

This class represents the rendition dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 266, page 489.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=497)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 277, page 613.](https://www.iso.org/standard/63534.html)

A rendition dictionary describes one way of presenting media content. It is associated with a screen annotation and specifies either the media data directly (media rendition) or a prioritised list of candidate renditions to try in order (selector rendition).

The S entry names the rendition subtype: MR for a media rendition or SR for a selector rendition. The subtype determines which additional entries are present and how the rendition is processed.

The N entry holds a human-readable name for the rendition. This name is used in the rendition actions that refer to this rendition and in user interface elements that present the rendition to the user.

The MH and BE entries carry must-honour and best-effort parameter dictionaries that apply to the rendition. Must-honour parameters must be satisfied for playback to proceed; best-effort parameters are applied when possible but are not required.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RenditionElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.MediaRenditionElement`](../1499-mediarenditionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.SelectorRenditionElement`](../1500-selectorrenditionelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [RenditionElement](1-methods/01-renditionelement.md) | Create a new RenditionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the rendition dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the rendition dictionary object. |
| [EntryN](2-properties/03-entryn.md) | Represents the "N" entry of the rendition dictionary object. |
| [EntryMH](2-properties/04-entrymh.md) | Represents the "MH" entry of the rendition dictionary object. |
| [EntryBE](2-properties/05-entrybe.md) | Represents the "BE" entry of the rendition dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
