# ICCProfileStreamElement Class

This class represents the icc profile stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 66, page 149.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=157)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 65, page 188.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

An ICC profile stream carries a binary ICC color profile that defines the relationship between device color values and a standard CIE profile connection space. The profile follows the ICC specification for its internal structure.

The N entry records the number of color components in the profile's input color space. Valid values are 1, 3, and 4, corresponding to gray, RGB or Lab, and CMYK respectively.

The Alternate entry provides a fallback color space for use when ICC processing is not supported. The alternate must have the same number of components as N to ensure consistent handling of color values.

The Range entry bounds the valid component values. Although component values are typically in the range 0 to 1, some profiles use different encodings and the Range array communicates those bounds to the reader.

The stream data must be a valid ICC profile. A conforming reader that supports ICC color management will embed this data into its color pipeline for accurate conversion from the encoded space to the output device.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ICCProfileStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [ICCProfileStreamElement](1-methods/01-iccprofilestreamelement.md) | Create a new ICCProfileStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryN](2-properties/02-entryn.md) | Represents the "N" entry of the icc profile stream dictionary object. |
| [EntryAlternate](2-properties/03-entryalternate.md) | Represents the "Alternate" entry of the icc profile stream dictionary object. |
| [EntryRange](2-properties/04-entryrange.md) | Represents the "Range" entry of the icc profile stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
