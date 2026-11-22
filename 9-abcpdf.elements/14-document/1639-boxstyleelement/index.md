# BoxStyleElement Class

This class represents the box style dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 361, page 631.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=639)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 397, page 811.](https://www.iso.org/standard/63534.html)

A box style dictionary defines the visual appearance of a page boundary guide line in an editing application.

The C entry holds the color as a three-element DeviceRGB array. The W entry gives the line width in user space units. The S entry names the style: S for solid, D for dashed. The D entry holds the dash array and phase when a dashed style is used.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.BoxStyleElement`

## Methods

| Method | Description |
| --- | --- |
| [BoxStyleElement](1-methods/01-boxstyleelement.md) | Create a new BoxStyleElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryC](2-properties/01-entryc.md) | Represents the "C" entry of the box style dictionary object. |
| [EntryW](2-properties/02-entryw.md) | Represents the "W" entry of the box style dictionary object. |
| [EntryS](2-properties/03-entrys.md) | Represents the "S" entry of the box style dictionary object. |
| [EntryD](2-properties/04-entryd.md) | Represents the "D" entry of the box style dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
