# RenderModeElement Class

This class represents the render mode dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 307, page 527.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=535)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 318, page 659.](https://www.iso.org/standard/63534.html)

A render mode dictionary specifies how the surfaces of a 3D model are rendered. Different render modes reveal different aspects of the model, from photorealistic shading to wireframe outlines.

The AC entry names the auxiliary colour applied to edges, vertices, or backfaces depending on the render mode. The FC entry names the face colour mode, controlling how face colours are determined.

The O entry specifies the opacity of the model surfaces. The CV entry holds the colour value used for certain render modes such as solid or transparent solid that require a uniform colour.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RenderModeElement`

## Methods

| Method | Description |
| --- | --- |
| [RenderModeElement](1-methods/01-rendermodeelement.md) | Create a new RenderModeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the render mode dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the render mode dictionary object. |
| [EntryAC](2-properties/03-entryac.md) | Represents the "AC" entry of the render mode dictionary object. |
| [EntryFC](2-properties/04-entryfc.md) | Represents the "FC" entry of the render mode dictionary object. |
| [EntryO](2-properties/05-entryo.md) | Represents the "O" entry of the render mode dictionary object. |
| [EntryCV](2-properties/06-entrycv.md) | Represents the "CV" entry of the render mode dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
