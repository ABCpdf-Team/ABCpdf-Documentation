# ProjectedCoordinateSystemElement Class

This class represents the projected coordinate system dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 271, page 601.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111c, page 52.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=52)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ProjectedCoordinateSystemElement`

A projected coordinate system dictionary describes a planar projection of the earth's surface used for computing distances and areas in a geospatial PDF. The EPSG entry identifies the projected CRS and WKT provides the full definition.

## Methods

| Method | Description |
| --- | --- |
| [ProjectedCoordinateSystemElement](1-methods/01-projectedcoordinatesystemelement.md) | Create a new ProjectedCoordinateSystemElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the projected coordinate system dictionary object. |
| [EntryEPSG](2-properties/02-entryepsg.md) | Represents the "EPSG" entry of the projected coordinate system dictionary object. |
| [EntryWKT](2-properties/03-entrywkt.md) | Represents the "WKT" entry of the projected coordinate system dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
