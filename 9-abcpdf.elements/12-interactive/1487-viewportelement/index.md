# ViewportElement Class

This class represents the viewport dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 260, page 479.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=487)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 265, page 592.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.109, page 48.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=48)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ViewportElement`

A viewport dictionary defines a named rectangular region on a page used in association with a measurement or geospatial coordinate system. The BBox entry gives the region in default user space. The Measure entry references a measure dictionary mapping page coordinates to real-world coordinates.

## Methods

| Method | Description |
| --- | --- |
| [ViewportElement](1-methods/01-viewportelement.md) | Create a new ViewportElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the viewport dictionary object. |
| [EntryBBox](2-properties/02-entrybbox.md) | Represents the "BBox" entry of the viewport dictionary object. |
| [EntryName](2-properties/03-entryname.md) | Represents the "Name" entry of the viewport dictionary object. |
| [EntryMeasure](2-properties/04-entrymeasure.md) | Represents the "Measure" entry of the viewport dictionary object. |
| [EntryPtData](2-properties/05-entryptdata.md) | Represents the "PtData" entry of the viewport dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
