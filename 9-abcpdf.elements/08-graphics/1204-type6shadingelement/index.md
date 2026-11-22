# Type6ShadingElement Class

This class represents the type 6 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 84, page 196.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=204)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 83, page 244.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 6 shading encodes a Coons patch mesh. Each patch is defined by 12 control points that form a bicubic surface, plus 4 color values at the corners. The surface smoothly interpolates both shape and colour.

BitsPerCoordinate and BitsPerComponent set the bit depth of coordinate and color values in the stream. BitsPerFlag controls the flag field that specifies how each patch connects to its neighbours.

The Decode array maps encoded integer values to actual coordinate ranges and color ranges.

An optional Function entry allows a scalar tint per corner in place of full color components, with the function converting those tints to the shading's color space.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type6ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type6ShadingElement](1-methods/01-type6shadingelement.md) | Create a new Type6ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryBitsPerCoordinate](2-properties/02-entrybitspercoordinate.md) | Represents the "BitsPerCoordinate" entry of the type 6 shading dictionary object. |
| [EntryBitsPerComponent](2-properties/03-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the type 6 shading dictionary object. |
| [EntryDecode](2-properties/04-entrydecode.md) | Represents the "Decode" entry of the type 6 shading dictionary object. |
| [EntryFunction](2-properties/05-entryfunction.md) | Represents the "Function" entry of the type 6 shading dictionary object. |
| [EntryBitsPerFlag](2-properties/06-entrybitsperflag.md) | Represents the "BitsPerFlag" entry of the type 6 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
