# BorderEffectElement Class

This class represents the border effect dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 167, page 387.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=395)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 169, page 470.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.BorderEffectElement`

A border effect dictionary qualifies the border of a square, circle, or free-text annotation with a visual effect. The only defined effect is a cloudy border, which draws the boundary as a series of arcs.

The I entry controls the cloud intensity: larger values produce more pronounced arcs. A value of zero effectively disables the cloud effect.

## Methods

| Method | Description |
| --- | --- |
| [BorderEffectElement](1-methods/01-bordereffectelement.md) | Create a new BorderEffectElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryS](2-properties/01-entrys.md) | Represents the "S" entry of the border effect dictionary object. |
| [EntryI](2-properties/02-entryi.md) | Represents the "I" entry of the border effect dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
