# Version13OpiElement Class

This class represents the version 1.3 opi dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 639.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=647)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 823.](https://www.iso.org/standard/63534.html)

A version 1.3 OPI dictionary provides metadata and placement parameters for high-resolution image substitution at output time.

The F entry holds the file specification of the high-resolution original. The ID entry holds a unique identifier. The Comments entry holds a human-readable description.

The Size entry gives the pixel dimensions of the high-resolution image. The CropRect entry defines the region used in the layout. The Position entry gives the four corner coordinates on the page.

The Resolution entry gives the image resolution. The ColorType, Color, and Tint entries describe the image colorants. The Overprint entry controls compositing at output.

The ImageType entry describes channel count and bit depth. The GrayMap entry holds a transfer curve for grayscale images. The Transparency entry indicates a transparent background.

The Tags entry holds application-specific key-value metadata not covered by the standard OPI 1.3 entries.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.OpiElement`](../1647-opielement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Version13OpiElement`

## Methods

| Method | Description |
| --- | --- |
| [Version13OpiElement](1-methods/01-version13opielement.md) | Create a new Version13OpiElement. |
|  | [inherited methods...](../1647-opielement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the version 1. |
| [EntryID](2-properties/02-entryid.md) | Represents the "ID" entry of the version 1. |
| [EntryComments](2-properties/03-entrycomments.md) | Represents the "Comments" entry of the version 1. |
| [EntrySize](2-properties/04-entrysize.md) | Represents the "Size" entry of the version 1. |
| [EntryCropRect](2-properties/05-entrycroprect.md) | Represents the "CropRect" entry of the version 1. |
| [EntryCropFixed](2-properties/06-entrycropfixed.md) | Represents the "CropFixed" entry of the version 1. |
| [EntryPosition](2-properties/07-entryposition.md) | Represents the "Position" entry of the version 1. |
| [EntryResolution](2-properties/08-entryresolution.md) | Represents the "Resolution" entry of the version 1. |
| [EntryColorType](2-properties/09-entrycolortype.md) | Represents the "ColorType" entry of the version 1. |
| [EntryColor](2-properties/10-entrycolor.md) | Represents the "Color" entry of the version 1. |
| [EntryTint](2-properties/11-entrytint.md) | Represents the "Tint" entry of the version 1. |
| [EntryOverprint](2-properties/12-entryoverprint.md) | Represents the "Overprint" entry of the version 1. |
| [EntryImageType](2-properties/13-entryimagetype.md) | Represents the "ImageType" entry of the version 1. |
| [EntryGrayMap](2-properties/14-entrygraymap.md) | Represents the "GrayMap" entry of the version 1. |
| [EntryTransparency](2-properties/15-entrytransparency.md) | Represents the "Transparency" entry of the version 1. |
| [EntryTags](2-properties/16-entrytags.md) | Represents the "Tags" entry of the version 1. |
|  | [inherited properties...](../1647-opielement/index.md) |
