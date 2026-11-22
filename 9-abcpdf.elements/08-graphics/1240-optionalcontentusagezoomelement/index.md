# OptionalContentUsageZoomElement Class

This class represents the optional content usage zoom dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The zoom usage dictionary defines a magnification range within which an optional content group should be visible. This allows content to appear or disappear as the user zooms in or out.

The min entry gives the minimum magnification factor at which the group is visible. A value of 0 means no lower bound.

The max entry gives the maximum magnification factor. A value of infinity (represented in the file by a very large number) means no upper bound. When the viewer's zoom falls outside \[min, max\], the group may be turned off automatically.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageZoomElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageZoomElement](1-methods/01-optionalcontentusagezoomelement.md) | Create a new OptionalContentUsageZoomElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryMin](2-properties/01-entrymin.md) | Represents the "min" entry of the optional content usage zoom dictionary object. |
| [EntryMax](2-properties/02-entrymax.md) | Represents the "max" entry of the optional content usage zoom dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
