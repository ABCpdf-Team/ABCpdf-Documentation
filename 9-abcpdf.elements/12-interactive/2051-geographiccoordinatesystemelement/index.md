# GeographicCoordinateSystemElement Class

This class represents the geographic coordinate system dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 270, page 600.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111b, page 51.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=51)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.GeographicCoordinateSystemElement`

A geographic coordinate system dictionary describes the datum and coordinate reference system used to interpret geographic coordinates in a geospatial PDF. The EPSG entry provides a numeric code identifying the CRS. The WKT entry provides the full Well Known Text definition as a fallback.

## Methods

| Method | Description |
| --- | --- |
| [GeographicCoordinateSystemElement](1-methods/01-geographiccoordinatesystemelement.md) | Create a new GeographicCoordinateSystemElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the geographic coordinate system dictionary object. |
| [EntryEPSG](2-properties/02-entryepsg.md) | Represents the "EPSG" entry of the geographic coordinate system dictionary object. |
| [EntryWKT](2-properties/03-entrywkt.md) | Represents the "WKT" entry of the geographic coordinate system dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
