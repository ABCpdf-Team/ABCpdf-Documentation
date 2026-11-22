# SeparationElement Class

This class represents the separation dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 364, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 400, page 813.](https://www.iso.org/standard/63534.html)

A separation dictionary describes one color separation of a composite page in a pre-separated PDF job.

The Pages entry holds an array of indirect references to all separation page objects for the composite page, linking all separations together.

The DeviceColorant entry names the device colorant this separation represents: Cyan, Magenta, Yellow, Black, or a spot color name.

The ColorSpace entry holds a color space array mapping the separation tint values to a device-independent color, supporting on-screen proofing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SeparationElement`

## Methods

| Method | Description |
| --- | --- |
| [SeparationElement](1-methods/01-separationelement.md) | Create a new SeparationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryPages](2-properties/01-entrypages.md) | Represents the "Pages" entry of the separation dictionary object. |
| [EntryDeviceColorant](2-properties/02-entrydevicecolorant.md) | Represents the "DeviceColorant" entry of the separation dictionary object. |
| [EntryColorSpace](2-properties/03-entrycolorspace.md) | Represents the "ColorSpace" entry of the separation dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
