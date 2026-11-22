# Type4ShadingElement Class

This class represents the type 4 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 189.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=197)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 236.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 4 shading encodes a free-form triangle mesh in a stream. Each vertex carries a flag, a pair of coordinates, and a set of color components. The flag determines how the vertex connects to the preceding triangle.

BitsPerCoordinate sets the bit depth of each coordinate value. BitsPerComponent sets the bit depth of each color component value. These govern how the raw bytes in the stream are decoded into numeric values.

BitsPerFlag sets the bit depth of the flag field for each vertex. The flag value indicates whether the vertex starts a new triangle or shares an edge with the previous one.

The Decode array maps the encoded integer coordinate and component values to the actual coordinate ranges and color component ranges used during rendering.

The optional Function entry replaces the per-vertex color components with a single tint value per vertex. The function maps this tint to the full color in the shading's color space. When present, each vertex carries one component rather than the full number required by the color space.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type4ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type4ShadingElement](1-methods/01-type4shadingelement.md) | Create a new Type4ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryBitsPerCoordinate](2-properties/02-entrybitspercoordinate.md) | Represents the "BitsPerCoordinate" entry of the type 4 shading dictionary object. |
| [EntryBitsPerComponent](2-properties/03-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the type 4 shading dictionary object. |
| [EntryDecode](2-properties/04-entrydecode.md) | Represents the "Decode" entry of the type 4 shading dictionary object. |
| [EntryFunction](2-properties/05-entryfunction.md) | Represents the "Function" entry of the type 4 shading dictionary object. |
| [EntryBitsPerFlag](2-properties/06-entrybitsperflag.md) | Represents the "BitsPerFlag" entry of the type 4 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
