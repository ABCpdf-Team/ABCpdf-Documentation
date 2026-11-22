# LabColorSpaceAttributesElement Class

This class represents the lab colour space dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 65, page 148.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=156)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 64, page 186.](https://www.iso.org/standard/63534.html)

The Lab color space attributes dictionary supplies the white point and optional black point and range that parameterise the CIE L\*a\*b\* encoding.

The white point defines the reference illuminant in CIE XYZ. It must have a Y component of 1.0 and is used to normalise the XYZ values during conversion from Lab to the profile connection space.

The optional black point gives the XYZ of the darkest colour. When absent, (0, 0, 0) is used, meaning an L\* of zero maps to zero XYZ output.

The range array limits the valid extent of the a\* and b\* opponent-colour channels. Default values of -128 to 127 for each axis are used when the entry is absent. Clipping to these bounds is applied before conversion.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.LabColorSpaceAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [LabColorSpaceAttributesElement](1-methods/01-labcolorspaceattributeselement.md) | Create a new LabColorSpaceAttributesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryWhitePoint](2-properties/01-entrywhitepoint.md) | Represents the "WhitePoint" entry of the lab colour space dictionary object. |
| [EntryBlackPoint](2-properties/02-entryblackpoint.md) | Represents the "BlackPoint" entry of the lab colour space dictionary object. |
| [EntryRange](2-properties/03-entryrange.md) | Represents the "Range" entry of the lab colour space dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
