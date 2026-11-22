# MinimumBitDepthElement Class

This class represents the minimum bit depth dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 269, page 490.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=498)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 280, page 615.](https://www.iso.org/standard/63534.html)

A minimum bit depth dictionary specifies the minimum colour bit depth required for media playback. It is used as a media criterion to ensure that the display can render the media with adequate colour fidelity.

The V entry holds the minimum bit depth value as an integer. The M entry specifies the monitor type to which this requirement applies, allowing different minimum depths to be set for different monitor configurations.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MinimumBitDepthElement`

## Methods

| Method | Description |
| --- | --- |
| [MinimumBitDepthElement](1-methods/01-minimumbitdepthelement.md) | Create a new MinimumBitDepthElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the minimum bit depth dictionary object. |
| [EntryV](2-properties/02-entryv.md) | Represents the "V" entry of the minimum bit depth dictionary object. |
| [EntryM](2-properties/03-entrym.md) | Represents the "M" entry of the minimum bit depth dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
