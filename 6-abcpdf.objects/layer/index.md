# Layer Class

A layer of visible content on a page.

Each time content is added to a page a new layer is created. Different kinds of layers are created for different types of content. For example the AddText method will result in the creation of a TextLayer and the AddImage one will produce an ImageLayer.

A layer corresponds to a stream object referenced from the Page Contents array. The Page.Flatten method concatenates all the stream and then compresses them to save space.

Note that this type of layer is an ABCpdf construct that you cannot detect using Acrobat. Acrobat layers are something completely different and are more precisely known as Optional Content Groups (OCGs). See the [Doc.Layer](../../5-abcpdf/doc/2-properties/layer.md) property for details of how to construct and manipulate this type of optional layer.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)  
`          WebSupergoo.ABCpdf14.Objects.Layer`  
`             `[`WebSupergoo.ABCpdf14.Objects.GraphicLayer`](../graphiclayer/index.md)  
`             `[`WebSupergoo.ABCpdf14.Objects.ImageLayer`](../imagelayer/index.md)  
`             `[`WebSupergoo.ABCpdf14.Objects.TextLayer`](../textlayer/index.md)  
`             `[`WebSupergoo.ABCpdf14.Objects.ViewLayer`](../viewlayer/index.md)

`Implements: IEquatable<Layer>`

## Methods

| Method | Description |
| :---: | --- |
|  | [inherited methods...](../streamobject/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [BaseRect](2-properties/baserect.md) | The untransformed rect defining the bounds of the visible content on the page. |
| [Page](2-properties/page.md) | The Page on which the Layer is located. |
| [Rect](2-properties/rect.md) | The transformed rect defining the bounds of the visible content. |
| [Transform](2-properties/transform.md) | The transform which has been applied to the visible content. |
|  | [inherited properties...](../streamobject/index.md) |
