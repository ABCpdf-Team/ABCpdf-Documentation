# RenditionMhBeElement Class

This class represents the rendition mh/be dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 267, page 489.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=497)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 278, page 613.](https://www.iso.org/standard/63534.html)

A rendition must-honour or best-effort dictionary carries parameters that control whether a rendition may be played. The C entry holds a media criteria dictionary specifying the environmental conditions required for this rendition to be selected.

Parameters in a must-honour dictionary block playback if they cannot be satisfied. Parameters in a best-effort dictionary are applied when possible but do not prevent playback if unsatisfied.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RenditionMhBeElement`

## Methods

| Method | Description |
| --- | --- |
| [RenditionMhBeElement](1-methods/01-renditionmhbeelement.md) | Create a new RenditionMhBeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryC](2-properties/01-entryc.md) | Represents the "C" entry of the rendition mh/be dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
