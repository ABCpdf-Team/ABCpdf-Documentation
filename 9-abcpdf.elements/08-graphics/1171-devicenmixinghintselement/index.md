# DeviceNMixingHintsElement Class

This class represents the devicen mixing hints dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 73, page 163.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=171)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 72, page 206.](https://www.iso.org/standard/63534.html)

The DeviceN mixing hints dictionary provides advisory information to help rendering systems simulate the visual result of mixing DeviceN colorants on a substrate.

The Solidities entry gives a fractional opacity for each colorant when printed at full tint. A value of 1.0 means the colorant is fully opaque; lower values indicate a degree of transparency that affects how underlying inks show through.

The PrintingOrder entry lists the colorant names in the sequence they are applied to the substrate. This order affects the visual appearance when semi-transparent inks overprint one another.

The DotGain entry provides one or more transfer functions describing how the printed dot area grows relative to the requested tint. Dot gain compensation is important for accurate tone reproduction in halftone printing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DeviceNMixingHintsElement`

## Methods

| Method | Description |
| --- | --- |
| [DeviceNMixingHintsElement](1-methods/01-devicenmixinghintselement.md) | Create a new DeviceNMixingHintsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySolidities](2-properties/01-entrysolidities.md) | Represents the "Solidities" entry of the devicen mixing hints dictionary object. |
| [EntryPrintingOrder](2-properties/02-entryprintingorder.md) | Represents the "PrintingOrder" entry of the devicen mixing hints dictionary object. |
| [EntryDotGain](2-properties/03-entrydotgain.md) | Represents the "DotGain" entry of the devicen mixing hints dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
