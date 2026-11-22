# Type3ShadingElement Class

This class represents the type 3 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 81, page 187.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=195)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 80, page 233.](https://www.iso.org/standard/63534.html)

A Type 3 shading, also called a radial shading, paints a color gradient between two circles. The transition follows concentric circles that interpolate between the two defining circles.

The Coords entry specifies both circles as a six-element array: the centre and radius of the first circle, then the centre and radius of the second. Colours transition from the first circle toward the second.

The Domain entry maps the interpolation parameter to the function. At parameter 0 the first circle applies; at parameter 1 the second circle applies. Intermediate values produce intermediate circles.

The Function maps the scalar parameter to color component values in the shading's color space, determining the color at each concentric ring.

The Extend array works the same way as for Type 2 shadings: it controls whether the terminal color extends beyond the first or second circle.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type3ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type3ShadingElement](1-methods/01-type3shadingelement.md) | Create a new Type3ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryCoords](2-properties/01-entrycoords.md) | Represents the "Coords" entry of the type 3 shading dictionary object. |
| [EntryDomain](2-properties/02-entrydomain.md) | Represents the "Domain" entry of the type 3 shading dictionary object. |
| [EntryFunction](2-properties/03-entryfunction.md) | Represents the "Function" entry of the type 3 shading dictionary object. |
| [EntryExtend](2-properties/04-entryextend.md) | Represents the "Extend" entry of the type 3 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
