# CalRGBColorSpaceAttributesElement Class

This class represents the calrgb colour space dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 64, page 146.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=154)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 63, page 184.](https://www.iso.org/standard/63534.html)

The CalRGB color space attributes dictionary holds the calibration data that maps three RGB component values to CIE XYZ tristimulus values.

Each component is first raised to the corresponding power in the Gamma array. The resulting linearised values are then multiplied by the 3×3 matrix to produce XYZ coordinates relative to the specified white point.

The white point fixes the reference illuminant. It must have a Y component of 1.0. The XZ components establish the chromaticity of the white for the space, which is used during colour conversion.

The optional black point identifies the XYZ of the darkest reproducible colour. If absent, zero XYZ is assumed, meaning a component value of zero maps to no light output.

The matrix columns correspond to the XYZ primaries of the red, green, and blue channels. Choosing appropriate matrix values allows the space to accurately model a specific display or scanner.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CalRGBColorSpaceAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [CalRGBColorSpaceAttributesElement](1-methods/01-calrgbcolorspaceattributeselement.md) | Create a new CalRGBColorSpaceAttributesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryWhitePoint](2-properties/01-entrywhitepoint.md) | Represents the "WhitePoint" entry of the calrgb colour space dictionary object. |
| [EntryBlackPoint](2-properties/02-entryblackpoint.md) | Represents the "BlackPoint" entry of the calrgb colour space dictionary object. |
| [EntryGamma](2-properties/03-entrygamma.md) | Represents the "Gamma" entry of the calrgb colour space dictionary object. |
| [EntryMatrix](2-properties/04-entrymatrix.md) | Represents the "Matrix" entry of the calrgb colour space dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
