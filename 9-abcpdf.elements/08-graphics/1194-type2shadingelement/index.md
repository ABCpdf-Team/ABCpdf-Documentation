# Type2ShadingElement Class

This class represents the type 2 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 80, page 186.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=194)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 79, page 231.](https://www.iso.org/standard/63534.html)

A Type 2 shading, also called an axial shading, paints a smooth transition between colors along a straight axis defined by two points. The color varies linearly along the axis and is constant in the perpendicular direction.

The Coords entry gives the two endpoints of the colour axis in shading space. Color values at intermediate positions are determined by the function evaluated at the interpolated parameter value.

The Domain entry bounds the parameter range passed to the function. Its default of \[0 1\] maps the start point of Coords to 0 and the end point to 1. Extending the domain beyond these limits can produce extrapolated colors.

The Function entry maps the parameter to color component values. It must accept one scalar input and produce outputs for each component of the shading's color space.

The Extend array controls whether the shading extends beyond the defined endpoints. Each boolean value applies to one end: true means the terminal color continues indefinitely; false means no paint is applied beyond that end.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type2ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type2ShadingElement](1-methods/01-type2shadingelement.md) | Create a new Type2ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryCoords](2-properties/01-entrycoords.md) | Represents the "Coords" entry of the type 2 shading dictionary object. |
| [EntryDomain](2-properties/02-entrydomain.md) | Represents the "Domain" entry of the type 2 shading dictionary object. |
| [EntryFunction](2-properties/03-entryfunction.md) | Represents the "Function" entry of the type 2 shading dictionary object. |
| [EntryExtend](2-properties/04-entryextend.md) | Represents the "Extend" entry of the type 2 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
