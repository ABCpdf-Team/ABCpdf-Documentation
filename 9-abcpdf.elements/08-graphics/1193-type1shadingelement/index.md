# Type1ShadingElement Class

This class represents the type 1 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 79, page 185.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=193)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 78, page 230.](https://www.iso.org/standard/63534.html)

A Type 1 shading, also called a function-based shading, computes the color at each point in shading space by evaluating a function of the (x, y) coordinates. The function maps two-dimensional positions to color component values.

The Domain entry defines the rectangular region of (x, y) values over which the function is evaluated. Points outside the domain are not colored by the shading.

The optional Matrix entry maps the shading's coordinate system to the coordinate system of the pattern or form in which it is used. This allows the shading to be rotated or scaled without changing the function.

The Function entry holds the function object that produces color values. It must accept two inputs and produce a number of outputs equal to the number of components in the shading's color space.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type1ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type1ShadingElement](1-methods/01-type1shadingelement.md) | Create a new Type1ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDomain](2-properties/01-entrydomain.md) | Represents the "Domain" entry of the type 1 shading dictionary object. |
| [EntryMatrix](2-properties/02-entrymatrix.md) | Represents the "Matrix" entry of the type 1 shading dictionary object. |
| [EntryFunction](2-properties/03-entryfunction.md) | Represents the "Function" entry of the type 1 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
