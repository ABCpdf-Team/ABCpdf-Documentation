# CalGrayColorSpaceAttributesElement Class

This class represents the calgray colour space dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 63, page 145.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=153)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 62, page 183.](https://www.iso.org/standard/63534.html)

The CalGray color space attributes dictionary holds the calibration parameters that define how a single gray component value maps to a CIE XYZ tristimulus value.

CalGray encodes a single-channel luminance value. The component is first raised to the power given by Gamma, then scaled by the Y component of the white point to produce the CIE Y value.

The white point array defines the reference illuminant as CIE XYZ values. It must contain three positive numbers, with the Y component equal to 1.0. This anchors the color space to a specific viewing condition.

The optional black point sets the CIE XYZ values corresponding to a component value of zero. If omitted, the black point defaults to the origin, meaning no output for a zero component.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CalGrayColorSpaceAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [CalGrayColorSpaceAttributesElement](1-methods/01-calgraycolorspaceattributeselement.md) | Create a new CalGrayColorSpaceAttributesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryWhitePoint](2-properties/01-entrywhitepoint.md) | Represents the "WhitePoint" entry of the calgray colour space dictionary object. |
| [EntryBlackPoint](2-properties/02-entryblackpoint.md) | Represents the "BlackPoint" entry of the calgray colour space dictionary object. |
| [EntryGamma](2-properties/03-entrygamma.md) | Represents the "Gamma" entry of the calgray colour space dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
