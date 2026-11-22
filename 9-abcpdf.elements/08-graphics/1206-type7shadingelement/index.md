# Type7ShadingElement Class

This class represents the type 7 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 198.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=206)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 7 shading encodes a tensor-product patch mesh. Each patch uses 16 control points arranged as a 4×4 tensor-product Bézier surface, giving more shape control than the 12-point Coons patch of Type 6.

BitsPerCoordinate and BitsPerComponent govern the bit depth of coordinates and color components in the stream. BitsPerFlag controls the edge-sharing flag.

The Decode array maps encoded integers to the working coordinate and color ranges.

The optional Function entry allows per-corner tint values instead of full color components, converted by the function to the shading's color space.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type7ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type7ShadingElement](1-methods/01-type7shadingelement.md) | Create a new Type7ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryBitsPerCoordinate](2-properties/02-entrybitspercoordinate.md) | Represents the "BitsPerCoordinate" entry of the type 7 shading dictionary object. |
| [EntryBitsPerComponent](2-properties/03-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the type 7 shading dictionary object. |
| [EntryDecode](2-properties/04-entrydecode.md) | Represents the "Decode" entry of the type 7 shading dictionary object. |
| [EntryFunction](2-properties/05-entryfunction.md) | Represents the "Function" entry of the type 7 shading dictionary object. |
| [EntryBitsPerFlag](2-properties/06-entrybitsperflag.md) | Represents the "BitsPerFlag" entry of the type 7 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
