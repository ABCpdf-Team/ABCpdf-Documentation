# ICCBasedColorSpaceElement Class

This class represents an ICC calibrated color space.

Calibrated color spaces specify values which are device independent and more akin to the way we perceive colors.

The result is that, within the limits of an output device, calibrated colors will appear the same even when displayed on different devices.

The International Color Consortium (ICC) defines standards for cross-platform, standardized, calibrated color spaces.

ICC color spaces encompass a wide range of color spaces with characteristics contained in a color profile data package.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 66, page 149.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=157)

ICCBased wraps an ICC color profile stream to define a device-independent color space. The number of components is determined by the profile's color space signature rather than by a fixed rule.

The embedded ICC profile provides the full forward and inverse transforms between the encoded component values and the CIE profile connection space. A conforming reader uses this profile when converting colors to the output device.

An alternate color space may be provided for contexts where ICC processing is not available. The alternate must have the same number of components as the ICC profile's input space.

ICCBased spaces can represent gray, RGB, CMYK, and Lab input spaces, depending on the embedded profile. This makes the color space family flexible enough to cover most real-world color encoding scenarios.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ICCBasedColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [ICCBasedColorSpaceElement](1-methods/01-iccbasedcolorspaceelement.md) | Create a new ICCBasedColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAttributes](2-properties/01-entryattributes.md) | This property represents the parameters that characterize this device independent color space. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
