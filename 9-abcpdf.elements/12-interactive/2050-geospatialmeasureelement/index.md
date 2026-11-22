# GeospatialMeasureElement Class

This class represents the geospatial measure dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 269, page 598.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111a, page 50.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=50)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.MeasureElement`](../1488-measureelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.GeospatialMeasureElement`

A geospatial measure dictionary maps page coordinates to geographic coordinates, enabling PDF pages to function as georeferenced maps. The GCS entry describes the geographic coordinate system and DCS the display coordinate system.

The GPTS and LPTS arrays hold matching geographic and page coordinate pairs defining the registration. The Bounds entry gives the geographic boundary polygon. PCSM references a projected coordinate system for computing distances.

## Methods

| Method | Description |
| --- | --- |
| [GeospatialMeasureElement](1-methods/01-geospatialmeasureelement.md) | Create a new GeospatialMeasureElement. |
|  | [inherited methods...](../1488-measureelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryBounds](2-properties/01-entrybounds.md) | Represents the "Bounds" entry of the geospatial measure dictionary object. |
| [EntryGCS](2-properties/02-entrygcs.md) | Represents the "GCS" entry of the geospatial measure dictionary object. |
| [EntryDCS](2-properties/03-entrydcs.md) | Represents the "DCS" entry of the geospatial measure dictionary object. |
| [EntryPDU](2-properties/04-entrypdu.md) | Represents the "PDU" entry of the geospatial measure dictionary object. |
| [EntryGPTS](2-properties/05-entrygpts.md) | Represents the "GPTS" entry of the geospatial measure dictionary object. |
| [EntryLPTS](2-properties/06-entrylpts.md) | Represents the "LPTS" entry of the geospatial measure dictionary object. |
| [EntryPCSM](2-properties/07-entrypcsm.md) | Represents the "PCSM" entry of the geospatial measure dictionary object. |
|  | [inherited properties...](../1488-measureelement/index.md) |
