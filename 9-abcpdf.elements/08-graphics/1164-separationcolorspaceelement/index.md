# SeparationColorSpaceElement Class

This class represents a separation color space.

A separation color space represents a single custom color. Most typically these are spot colors used in printing.

For example the conventional color space for printing is CMYK and for that you can use the DeviceCMYK color space.

However you might wish to add support for a custom ink like gold or silver which will print correctly when passed to a printer which supports this ink.

The separation color space includes a conversion function so that it will also provide a good representation on screen and on normal CMYK printers.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Section: 8.6.6.4, page 157.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=165)

A Separation color space names a single colorant channel, typically a spot color or a specific ink used in printing. It encodes a single tint value that represents the amount of that colorant to apply.

The name identifies the colorant. The special name All targets every available colorant simultaneously; the name None targets no colorant and produces no visible output.

The alternate color space provides a fallback rendering for devices that cannot produce the named colorant. The tint transform function converts the single tint value into component values in the alternate space.

On devices that support the named colorant, the tint value is passed directly to the colorant channel. On other devices, the alternate space and tint transform together determine what is rendered.

Spot color workflows rely on Separation color spaces to pass colorant identity through the PDF pipeline to a RIP or press, which can then use the correct physical ink.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.SeparationColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [SeparationColorSpaceElement](1-methods/01-separationcolorspaceelement.md) | Create a new SeparationColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryName](2-properties/01-entryname.md) | This property represents the name of the separation color space. |
| [EntryAlternateColorSpace](2-properties/02-entryalternatecolorspace.md) | This property represents the alternate color space for this Separation color space. |
| [EntryTintTransform](2-properties/03-entrytinttransform.md) | This property represents the tint transform function. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
