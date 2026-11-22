# Type5ShadingElement Class

This class represents the type 5 shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 83, page 193.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=201)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 82, page 240.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 5 shading encodes a lattice-form triangle mesh where vertices are arranged in a rectangular grid of rows. Adjacent rows share edges to form a strip of triangles without explicit edge flags.

BitsPerCoordinate and BitsPerComponent set the bit depths for coordinates and color components respectively. These values determine how each vertex's data is decoded from the stream.

VerticesPerRow gives the fixed number of vertices in each row of the lattice. The mesh is formed by pairing each row with the next, producing two triangles per pair of adjacent vertices.

The Decode array maps encoded integer values to the coordinate and color component ranges used during rendering.

The optional Function entry allows a single tint value per vertex in place of full color components, with the function converting that tint to the shading's color space.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ShadingElement`](../1191-shadingelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type5ShadingElement`

## Methods

| Method | Description |
| --- | --- |
| [Type5ShadingElement](1-methods/01-type5shadingelement.md) | Create a new Type5ShadingElement. |
|  | [inherited methods...](../1191-shadingelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryBitsPerCoordinate](2-properties/02-entrybitspercoordinate.md) | Represents the "BitsPerCoordinate" entry of the type 5 shading dictionary object. |
| [EntryBitsPerComponent](2-properties/03-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the type 5 shading dictionary object. |
| [EntryDecode](2-properties/04-entrydecode.md) | Represents the "Decode" entry of the type 5 shading dictionary object. |
| [EntryFunction](2-properties/05-entryfunction.md) | Represents the "Function" entry of the type 5 shading dictionary object. |
| [EntryVerticesPerRow](2-properties/06-entryverticesperrow.md) | Represents the "VerticesPerRow" entry of the type 5 shading dictionary object. |
|  | [inherited properties...](../1191-shadingelement/index.md) |
