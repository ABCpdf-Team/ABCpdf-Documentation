# MeasureElement Class

This class represents the measure dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 261, page 480.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=488)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 266, page 593.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.110, page 49.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=49)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MeasureElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.GeospatialMeasureElement`](../2050-geospatialmeasureelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.RectilinearMeasureElement`](../1489-rectilinearmeasureelement/index.md)

A measure dictionary is the base type for rectilinear and geospatial measurement dictionaries. The Subtype entry distinguishes the model: RL for rectilinear measurement and GEO for geospatial measurement.

## Methods

| Method | Description |
| --- | --- |
| [MeasureElement](1-methods/01-measureelement.md) | Create a new MeasureElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the measure dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the measure dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
