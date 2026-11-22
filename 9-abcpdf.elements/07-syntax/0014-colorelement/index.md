# ColorElement Class

This class represents a color.

A color consists of an array of component values. For example an RGB color has three values between zero and one, a CMYK color has four between zero and one.

Colors only make sense in the context of a color space that specifies what the components represent. Most components range between zero and one.

However some color spaces such as Lab have components with values outside this range.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 139.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=147)

The color element represents a color value as an array of numeric components. The number of components depends on the color space in which the color is used.

Color values are used throughout PDF for specifying stroke and fill colors, background colors in annotation appearances, and default colors in various dictionary entries.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ColorElement`

## Methods

| Method | Description |
| --- | --- |
| [ColorElement](1-methods/01-colorelement.md) | Create a new ColorElement. |
| [GetColor](1-methods/02-getcolor.md) | Get the contents of this ColorElement as an XColor. |
| [SetColor](1-methods/03-setcolor.md) | Set the contents of this ColorElement using an XColor. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Components](2-properties/01-components.md) | The component intensities for the color. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
