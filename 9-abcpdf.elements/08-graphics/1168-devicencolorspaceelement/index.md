# DeviceNColorSpaceElement Class

This class represents a DeviceN or multi-separation color space.

A DeviceN color space represents a set of custom colors. Most typically these are spot colors used in printing.

For example the conventional color space for printing is CMYK and for that you can use the DeviceCMYK color space.

However processes like Hexachrome added orange and green inks to better represent a wider range of colors.

Using a DeviceN color space you can specify a CMYKOG color space which will print correctly on a Hexachrome printer.

The DeviceN color space includes a conversion function so that it will also provide a good representation on screen and on normal CMYK printers.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Section: 8.6.6.5, page 159.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=167)

DeviceN extends the Separation concept to multiple colorants, allowing a single color space to address several named channels simultaneously. Each component in a DeviceN color corresponds to one named colorant.

The names array lists the colorant names in the same order as the component values. As with Separation, the special names All and None have defined behaviours.

The alternate color space and tint transform function provide a fallback for devices that cannot render one or more of the named colorants. The tint transform maps all DeviceN component values to the alternate space.

The optional attributes dictionary adds metadata about the colorants, including solidities, printing order, and mixing hints. These values assist rendering and soft-proofing software in producing accurate simulations.

DeviceN is commonly used in prepress workflows to describe multi-ink combinations, including HiFi color systems that use more than four process inks.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.DeviceNColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [DeviceNColorSpaceElement](1-methods/01-devicencolorspaceelement.md) | Create a new DeviceNColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryNames](2-properties/01-entrynames.md) | This property represents the names of the colors within the DeviceN color space. |
| [EntryAlternateColorSpace](2-properties/02-entryalternatecolorspace.md) | This property represents the alternate color space for this DeviceN color space. |
| [EntryTintTransform](2-properties/03-entrytinttransform.md) | This property represents the tint transform function. |
| [EntryAttributes](2-properties/04-entryattributes.md) | This property represents addition attributes specific to this color space. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
