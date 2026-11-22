# PointDataElement Class

This class represents the point data dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 272, page 602.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111d, page 53.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=53)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PointDataElement`

A point data dictionary stores named arrays of geographic point data associated with a page or viewport in geospatial PDFs. The Names array labels the data columns. The XPTS stream holds the point data. Subtype classifies the kind of point data.

## Methods

| Method | Description |
| --- | --- |
| [PointDataElement](1-methods/01-pointdataelement.md) | Create a new PointDataElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the point data dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the point data dictionary object. |
| [EntryNames](2-properties/03-entrynames.md) | Represents the "Names" entry of the point data dictionary object. |
| [EntryXPTS](2-properties/04-entryxpts.md) | Represents the "XPTS" entry of the point data dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
