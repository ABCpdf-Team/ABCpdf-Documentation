# BorderStyleElement Class

This class represents the border style dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 166, page 386.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=394)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 168, page 469.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.BorderStyleElement`

A border style dictionary describes the line style used to draw the border of a link, free-text, or widget annotation. Its entries control border width, line style, and dash pattern.

The S entry selects from named styles: Solid, Dashed, Beveled, Inset, and Underline. Beveled and Inset draw a simulated three-dimensional border using lighter and darker shades of the annotation colour.

The D entry is used only when the style is Dashed. It supplies the dash array in the same format as the PDF graphics dash-pattern operator.

## Methods

| Method | Description |
| --- | --- |
| [BorderStyleElement](1-methods/01-borderstyleelement.md) | Create a new BorderStyleElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the border style dictionary object. |
| [EntryW](2-properties/02-entryw.md) | Represents the "W" entry of the border style dictionary object. |
| [EntryS](2-properties/03-entrys.md) | Represents the "S" entry of the border style dictionary object. |
| [EntryD](2-properties/04-entryd.md) | Represents the "D" entry of the border style dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
