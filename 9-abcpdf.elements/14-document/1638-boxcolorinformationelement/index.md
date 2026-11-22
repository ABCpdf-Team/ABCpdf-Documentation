# BoxColorInformationElement Class

This class represents the box colour information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 360, page 630.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=638)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 396, page 810.](https://www.iso.org/standard/63534.html)

The box color information dictionary specifies the visual appearance of page boundary box guides in a PDF editing application, assigning a color and line style to each of the four optional page boxes.

Each entry is a box style dictionary specifying the color, line width, and dash style of the guide drawn for that box. These settings are purely presentational and have no effect on printing or rendering.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.BoxColorInformationElement`

## Methods

| Method | Description |
| --- | --- |
| [BoxColorInformationElement](1-methods/01-boxcolorinformationelement.md) | Create a new BoxColorInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryCropBox](2-properties/01-entrycropbox.md) | Represents the "CropBox" entry of the box colour information dictionary object. |
| [EntryBleedBox](2-properties/02-entrybleedbox.md) | Represents the "BleedBox" entry of the box colour information dictionary object. |
| [EntryTrimBox](2-properties/03-entrytrimbox.md) | Represents the "TrimBox" entry of the box colour information dictionary object. |
| [EntryArtBox](2-properties/04-entryartbox.md) | Represents the "ArtBox" entry of the box colour information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
