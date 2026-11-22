# Page Class

A visible page within the document.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       WebSupergoo.ABCpdf14.Objects.Page`

`Implements: IEquatable<Page>`

## Methods

| Method | Description |
| --- | --- |
| ⚠ [DeInline](1-methods/deinline.md) | Makes any inline images into external images. |
| [Detach](1-methods/detach.md) | Detaches a content stream from the page. |
| [Flatten](1-methods/flatten.md) | Flatten and compress the page content stream. |
| [GetAnnotations](1-methods/getannotations.md) | Gets all the Annotations on the page. |
| [GetLayers](1-methods/getlayers.md) | Gets all the content Layers for the page. |
| [GetNamedSeparations](1-methods/getnamedseparations.md) | Gets all the named separations referenced by the page. |
| [GetNextMcid](1-methods/getnextmcid.md) | Gets the next available MCID for use on this Page. |
| [GetResourcesByType](1-methods/getresourcesbytype.md) | Get all the resources of a named type, optionally including any used by referenced objects. |
| [GetResourceMap](1-methods/getresourcemap.md) | Get a dictionary mapping the names of a particular type of resource to Atoms. |
| [GetText](1-methods/gettext.md) | Extract content from the current page in a specified format. |
| ⚠ [Recolor](1-methods/recolor.md) | Converts the page from one color space to another. |
| ⚠ [VectorizeText](1-methods/vectorizetext.md) | Replaces the text on the page with glyph outlines. |
| [AddLayer](1-methods/addlayer.md) | Add a content layer at the front of the page. |
| [AddResource](1-methods/addresource.md) | Add a particular type of resource to the page. |
| ⚠ [GetBitmap](1-methods/getbitmap.md) | Render one or more layers on the current page. |
| [GetContentData](1-methods/getcontentdata.md) | Gets the decompressed content data from the page. |
| [SetContentData](1-methods/setcontentdata.md) | Sets the content data for the page. |
| [MakeFormXObject](1-methods/makeformxobject.md) | Makes a FormXObject out of the page. |
| [Rotate](1-methods/rotate.md) | Rotates the page by a multiple of ninety degrees. |
| [StampFormXObjects](1-methods/stampformxobjects.md) | Removes all Form XObjects from the page by embedding them into the page content. |
| [Transform](1-methods/transform.md) | Transform the page contents and page bounding boxes. |

## Properties

| Property | Description |
| --- | --- |
| [ArtBox](2-properties/artbox.md) | The ArtBox for the page. |
| [BleedBox](2-properties/bleedbox.md) | The BleedBox for the page. |
| ⚠ [CropBox](2-properties/cropbox.md) | The CropBox for the page. |
| ⚠ [MediaBox](2-properties/mediabox.md) | The MediaBox for the page. |
| [PageNumber](2-properties/pagenumber.md) | The number of the page in the document. |
| [Parent](2-properties/parent.md) | The parent of this page. |
| [Rotation](2-properties/rotation.md) | The number of degrees to rotate the page before display. |
| [Thumbnail](2-properties/thumbnail.md) | The Thumbnail for the page. |
| [TrimBox](2-properties/trimbox.md) | The TrimBox for the page. |
| [UserUnit](2-properties/userunit.md) | The size of default user space units. |
