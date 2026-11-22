# ViewParamsElement Class

This class represents the view params dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 345, page 707.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51g, page 93.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=93)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ViewParamsElement`

A view params dictionary pairs a rich media instance with a set of stored viewing parameters such as a camera position or 3D view state. The Instance entry references the rich media instance. The Data entry holds the view state in a media-type-specific format.

## Methods

| Method | Description |
| --- | --- |
| [ViewParamsElement](1-methods/01-viewparamselement.md) | Create a new ViewParamsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryInstance](2-properties/01-entryinstance.md) | Represents the "Instance" entry of the view params dictionary object. |
| [EntryData](2-properties/02-entrydata.md) | Represents the "Data" entry of the view params dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
