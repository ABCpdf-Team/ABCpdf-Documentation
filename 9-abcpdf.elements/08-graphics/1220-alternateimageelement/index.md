# AlternateImageElement Class

This class represents the alternate image dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 91, page 212.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=220)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 89, page 261.](https://www.iso.org/standard/63534.html)

An alternate image dictionary provides a substitute rendering of an image XObject. A conforming reader may choose an alternate based on output resolution, rendering context, or optional content state.

The Image entry references the substitute image XObject. This XObject may have different dimensions, color space, or compression from the parent image, allowing optimisation for different output conditions.

The DefaultForPrinting flag marks this alternate as the preferred choice for printing. Only one alternate in a given list should have this flag set to true.

The OC entry associates the alternate with an optional content group. When the group is off, the alternate is not used. This allows content authors to define alternates that activate under specific viewing or printing configurations.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AlternateImageElement`

## Methods

| Method | Description |
| --- | --- |
| [AlternateImageElement](1-methods/01-alternateimageelement.md) | Create a new AlternateImageElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryImage](2-properties/01-entryimage.md) | Represents the "Image" entry of the alternate image dictionary object. |
| [EntryDefaultForPrinting](2-properties/02-entrydefaultforprinting.md) | Represents the "DefaultForPrinting" entry of the alternate image dictionary object. |
| [EntryOC](2-properties/03-entryoc.md) | Represents the "OC" entry of the alternate image dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
