# ShadingElement Class

This class represents the shading dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=191)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 227.](https://www.iso.org/standard/63534.html)

The shading dictionary is the base structure for all PDF shading types. It defines the color space, optional bounding box, optional background color, and anti-aliasing flag that apply to every shading regardless of its type.

The ShadingType entry selects one of seven shading algorithms: function-based (Type 1), axial (Type 2), radial (Type 3), free-form Gouraud-shaded triangle mesh (Type 4), lattice-form Gouraud-shaded triangle mesh (Type 5), Coons patch mesh (Type 6), and tensor-product patch mesh (Type 7).

The ColorSpace entry sets the color space in which color values are expressed. It must be consistent with the number of color components produced by the shading's function or data stream.

The optional Background entry gives a color in the shading's color space that is painted outside the shading's natural geometry. It does not affect what appears inside the shading itself.

The optional BBox entry clips the shading to a rectangle in shading space. The shading paints nothing outside this box, which can improve rendering performance when only part of the shading is visible.

The AntiAlias flag advises the renderer whether to apply anti-aliasing when painting the shading. The default is false. Enabling it may improve edge quality at the cost of additional computation.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ShadingElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.Type1ShadingElement`](../1193-type1shadingelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type2ShadingElement`](../1194-type2shadingelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type3ShadingElement`](../1195-type3shadingelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type4ShadingElement`](../1197-type4shadingelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type5ShadingElement`](../1201-type5shadingelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type6ShadingElement`](../1204-type6shadingelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type7ShadingElement`](../1206-type7shadingelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [ShadingElement](1-methods/01-shadingelement.md) | Create a new ShadingElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryShadingType](2-properties/01-entryshadingtype.md) | Represents the "ShadingType" entry of the shading dictionary object. |
| [EntryColorSpace](2-properties/02-entrycolorspace.md) | Represents the "ColorSpace" entry of the shading dictionary object. |
| [EntryBackground](2-properties/03-entrybackground.md) | Represents the "Background" entry of the shading dictionary object. |
| [EntryBBox](2-properties/04-entrybbox.md) | Represents the "BBox" entry of the shading dictionary object. |
| [EntryAntiAlias](2-properties/05-entryantialias.md) | Represents the "AntiAlias" entry of the shading dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
