# LabColorSpaceElement Class

This class represents the Lab color space - a CIE based calibrated space.

Calibrated color spaces specify values which are device independent and more akin to the way we perceive colors.

The result is that, within the limits of an output device, calibrated colors will appear the same even when displayed on different devices.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 65, page 148.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=156)

Lab is a three-component CIE-based color space built on the CIE L\*a\*b\* model, which was designed to be perceptually uniform. The L\* component encodes lightness; a\* and b\* encode opponent-colour axes.

The attached attributes dictionary provides the white point, optional black point, and optional range limits for the a\* and b\* components. These parameters anchor the Lab encoding to a specific viewing illuminant.

Because L\*a\*b\* is perceptually uniform, equal numeric distances in the space correspond approximately to equal perceived colour differences. This property makes Lab useful for colour difference calculations and gamut mapping.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.LabColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [LabColorSpaceElement](1-methods/01-labcolorspaceelement.md) | Create a new LabColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAttributes](2-properties/01-entryattributes.md) | This property represents the parameters that characterize this device independent color space. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
