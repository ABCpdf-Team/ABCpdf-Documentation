# CalGrayColorSpaceElement Class

This class represents the calibrated gray color space.

Calibrated color spaces specify values which are device independent and more akin to the way we perceive colors.

The result is that, within the limits of an output device, calibrated colors will appear the same even when displayed on different devices.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 63, page 145.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=153)

CalGray is a CIE-based color space for grayscale content. It provides a device-independent definition of gray by tying the single component value to a calibrated XYZ reference through a gamma function and a white point.

The attributes dictionary attached to a CalGray space carries the white point, optional black point, and gamma. These three parameters fully define the mapping from the encoded gray value to CIE Y.

Because CalGray is device-independent, a conforming reader can convert its values to any target color space using standard CIE arithmetic, allowing consistent gray reproduction across different output devices.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.CalGrayColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [CalGrayColorSpaceElement](1-methods/01-calgraycolorspaceelement.md) | Create a new CalGrayColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAttributes](2-properties/01-entryattributes.md) | This property represents the parameters that characterize this device independent color space. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
