# DeviceColorSpaceElement Class

This class represents a device color space.

Device color spaces represent generic grayscale, RGB or CMYK outputs.

These types of color spaces represent physical quanties. So a grayscale value represents a literal amount of black ink on paper.

Because no color profile information is contained, device colors may vary between different outputs.

For example 50% copverage of one type of black ink on gloss paper may look different to 50% of another black ink on matte.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Section 8.6.4: 62, page 124.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=150)

Device color spaces map color component values directly to the output device's native colorants. No calibration or transformation is applied between the PDF color values and the marks placed on the medium.

The three device color spaces defined in PDF are DeviceGray, DeviceRGB, and DeviceCMYK. DeviceGray uses a single component for luminance; DeviceRGB uses three components for red, green, and blue; DeviceCMYK uses four components for cyan, magenta, yellow, and black.

Because device color spaces have no embedded calibration, the same component values may produce visually different results on different devices. This makes them unsuitable for color-managed workflows where consistent reproduction is required.

Device color spaces are commonly used in documents where color fidelity across devices is not critical, or where the output medium is known and fixed. They are simple to use and impose minimal processing overhead on conforming readers.

A conforming reader may apply a default color space mapping when a device color space is encountered, substituting a calibrated equivalent defined in the document's default color space entries. This allows colour management to be applied retroactively.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.DeviceColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [DeviceColorSpaceElement](1-methods/01-devicecolorspaceelement.md) | Create a new DeviceColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
