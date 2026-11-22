# CalRGBColorSpaceElement Class

This class represents the calibrated RGB color space.

Calibrated color spaces specify values which are device independent and more akin to the way we perceive colors.

The result is that, within the limits of an ouput device, calibrated colors will appear the same even when displayed on different devices.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 64, page 146.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=154)

CalRGB is a three-component CIE-based color space that maps RGB values to CIE XYZ through a per-channel gamma correction followed by a linear matrix transform.

The attached attributes dictionary supplies the gamma values, the 3×3 matrix, the white point, and an optional black point. These four items together fully characterise the color space.

CalRGB is suitable for representing display-referred content where the RGB primaries and viewing conditions are known. Its device-independent definition enables accurate color transformation to other spaces.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.CalRGBColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [CalRGBColorSpaceElement](1-methods/01-calrgbcolorspaceelement.md) | Create a new CalRGBColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAttributes](2-properties/01-entryattributes.md) | This property represents the parameters that characterize this device independent color space. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
