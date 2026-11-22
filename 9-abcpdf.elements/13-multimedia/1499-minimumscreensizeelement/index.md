# MinimumScreenSizeElement Class

This class represents the minimum screen size dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 270, page 491.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=499)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 281, page 615.](https://www.iso.org/standard/63534.html)

A minimum screen size dictionary specifies the minimum screen dimensions required for media playback as a criterion. It ensures that media intended for a particular minimum display area is not attempted on screens that are too small.

The V entry holds the minimum screen size as a two-element array giving width and height in pixels. The M entry specifies the monitor configuration to which this requirement applies.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MinimumScreenSizeElement`

## Methods

| Method | Description |
| --- | --- |
| [MinimumScreenSizeElement](1-methods/01-minimumscreensizeelement.md) | Create a new MinimumScreenSizeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the minimum screen size dictionary object. |
| [EntryV](2-properties/02-entryv.md) | Represents the "V" entry of the minimum screen size dictionary object. |
| [EntryM](2-properties/03-entrym.md) | Represents the "M" entry of the minimum screen size dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
