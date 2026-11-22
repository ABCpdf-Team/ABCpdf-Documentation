# OpiVersionElement Class

This class represents the opi version dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 368, page 639.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=647)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 405, page 823.](https://www.iso.org/standard/63534.html)

The OPI version dictionary holds separate OPI dictionaries for version 1.3 and version 2.0. A single image XObject may carry both to support processors implementing either version.

The 1.3 entry references a version 1.3 OPI dictionary. The 2.0 entry references a version 2.0 OPI dictionary. An OPI processor uses whichever version it supports, preferring 2.0 when both are present.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OpiVersionElement`

## Methods

| Method | Description |
| --- | --- |
| [OpiVersionElement](1-methods/01-opiversionelement.md) | Create a new OpiVersionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Entry13](2-properties/01-entry13.md) | Represents the "1. |
| [Entry20](2-properties/02-entry20.md) | Represents the "2. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
