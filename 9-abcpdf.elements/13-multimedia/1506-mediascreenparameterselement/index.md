# MediaScreenParametersElement Class

This class represents the media screen parameters dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 282, page 498.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=506)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 293, page 624.](https://www.iso.org/standard/63534.html)

A media screen parameters dictionary specifies how the media display window should appear. It contains must-honour and best-effort parameter dictionaries that carry the actual window settings.

The MH and BE entries reference must-honour and best-effort screen parameter dictionaries that carry window dimensions, position, opacity, background, floating window settings, and monitor selection.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaScreenParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaScreenParametersElement](1-methods/01-mediascreenparameterselement.md) | Create a new MediaScreenParametersElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media screen parameters dictionary object. |
| [EntryMH](2-properties/02-entrymh.md) | Represents the "MH" entry of the media screen parameters dictionary object. |
| [EntryBE](2-properties/03-entrybe.md) | Represents the "BE" entry of the media screen parameters dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
