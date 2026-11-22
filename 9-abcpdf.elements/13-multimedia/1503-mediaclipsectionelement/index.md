# MediaClipSectionElement Class

This class represents the media clip section dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 277, page 495.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=503)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 288, page 620.](https://www.iso.org/standard/63534.html)

A media clip section dictionary defines a time-delimited portion of another media clip. It references the source clip and specifies start and end offsets, allowing a single media file to provide multiple named sections that can be played independently.

The D entry references the source media clip. The Alt entry provides alternate text descriptions of the section for accessibility.

The MH and BE entries carry must-honour and best-effort parameters. The section start and end times are given through the MhBe parameters rather than directly in the clip section dictionary.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.MediaClipElement`](../1500-mediaclipelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.MediaClipSectionElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaClipSectionElement](1-methods/01-mediaclipsectionelement.md) | Create a new MediaClipSectionElement. |
|  | [inherited methods...](../1500-mediaclipelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryD](2-properties/01-entryd.md) | Represents the "D" entry of the media clip section dictionary object. |
| [EntryAlt](2-properties/02-entryalt.md) | Represents the "Alt" entry of the media clip section dictionary object. |
| [EntryMH](2-properties/03-entrymh.md) | Represents the "MH" entry of the media clip section dictionary object. |
| [EntryBE](2-properties/04-entrybe.md) | Represents the "BE" entry of the media clip section dictionary object. |
|  | [inherited properties...](../1500-mediaclipelement/index.md) |
