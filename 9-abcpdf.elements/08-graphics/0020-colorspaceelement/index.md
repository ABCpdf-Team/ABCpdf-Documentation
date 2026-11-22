# ColorSpaceElement Class

This class represents a color space.

Sub-classes represent different types of color spaces.

Internally within a PDF document color spaces are represented as an array of values with the first element being the type of color space.

However as a shorthand, if there is only one element in the array, the name can be used without an enclosing array.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 62, page 139.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=147)

The color space element is the abstract base for all PDF color space representations. Every color space in a PDF file belongs to one of the families defined by the specification: device, CIE-based, special, or pattern.

Color spaces govern how numeric color values are interpreted when painting graphics, text, or images. A conforming reader must convert those values to device-specific colorants before rendering.

Device color spaces (DeviceGray, DeviceRGB, DeviceCMYK) map component values directly to device colorants without a calibration stage. Their rendering is output-dependent and may vary across devices.

CIE-based color spaces (CalGray, CalRGB, Lab, ICCBased) anchor color values to a device-independent reference. This allows consistent color appearance across different output devices when proper ICC profiles or calibration data are present.

Special color spaces include Indexed, Pattern, Separation, and DeviceN. These extend the color model for use cases such as spot colors, tiling patterns, and multi-colorant printing.

A color space may be specified inline in a content stream or stored as a named resource in a page's or form's resource dictionary under the ColorSpace entry. Named resources allow reuse across multiple graphics operations without repeated definition.

When a color space is used with an image XObject, it defines how the sample data in the image stream maps to colors. The number of color components in the space must match the expected number of samples per pixel.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.CalGrayColorSpaceElement`](../1153-calgraycolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.CalRGBColorSpaceElement`](../1154-calrgbcolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.DeviceColorSpaceElement`](../0021-devicecolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.DeviceNColorSpaceElement`](../1168-devicencolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ICCBasedColorSpaceElement`](../1156-iccbasedcolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.IndexedColorSpaceElement`](../1164-indexedcolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.LabColorSpaceElement`](../1156-labcolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.PatternColorSpaceElement`](../1186-patterncolorspaceelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.SeparationColorSpaceElement`](../1164-separationcolorspaceelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [ColorSpaceElement](1-methods/01-colorspaceelement.md) | Create a new ColorSpaceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [ColorSpace](2-properties/01-colorspace.md) | This property represents the type of color space. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
