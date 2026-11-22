# ImageLayer Class

A generic bitmap layer appearing on a page of the document.

The actual bitmap data is held separately in a PixMap object. The ImageLayer merely references the bitmap and describes where and how it should be drawn. This is analogous to the way that images are embedded in HTML.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.Layer`](../layer/index.md)  
`             WebSupergoo.ABCpdf14.Objects.ImageLayer`

`Implements: IEquatable<ImageLayer>`

## Methods

| Method | Description |
| :---: | --- |
|  | [inherited methods...](../layer/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [ImageName](2-properties/imagename.md) | The name used to identify the PixMap in the Page resources. |
| [PixMap](2-properties/pixmap.md) | The PixMap containing the image data. |
|  | [inherited properties...](../layer/index.md) |
