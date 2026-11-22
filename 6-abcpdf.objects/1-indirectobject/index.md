# IndirectObject Class

A PDF indirect object.

PDF supports a number of basic types of object. Objects may be labeled so that they can be referred to by other objects. This type of object is called an indirect object.

ABCpdf uses a slightly different terminology to avoid clashes with other namespaces. Objects without labels contain basic data elements and are referred to as [Atoms](../../7-abcpdf.atoms/1-atom/index.md).

The term 'indirect object' is often shortened to 'PDF object' or sometime simply 'object'. There are a variety of types of PDF objects from content layers to fonts to annotations. Every object contains an Atom which represents the data held by that object.

Indirect objects are held in an [ObjectSoup](../2-objectsoup/index.md). This is a non-traditional collection with some of the characteristics of an Array and some of a Dictionary.

`System.Object`  
`    WebSupergoo.ABCpdf14.Objects.IndirectObject`  
`       `[`WebSupergoo.ABCpdf14.Objects.Annotation`](../annotation/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.Bookmark`](../bookmark/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.Catalog`](../catalog/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.ColorSpace`](../colorspace/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.Field`](../field/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.FileSpecification`](../filespecification/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.FontObject`](../fontobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.GraphicsState`](../graphicsstate/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.Page`](../page/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.Pages`](../pages/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)

`Implements: ICloneable, IDisposable, IEquatable<IndirectObject>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [FromString](1-methods/1-fromstring.md) | Construct an appropriate type of IndirectObject given a string value. |
| [IndirectObject](1-methods/2-indirectobject.md) | IndirectObject Constructor. |
| [Clone](1-methods/4-clone.md) | Create a deep copy of the current IndirectObject. |
| [Equals](1-methods/5-equals.md) | Test whether the two IndirectObjects are the same. |
| [GetHashCode](1-methods/6-gethashcode.md) | A hash code for the IndirectObject. |
| [Resolve](1-methods/7-resolve.md) | Resolves any indirect references and returns the Atom. |
| [ResolveRef](1-methods/8-resolveref.md) | Resolves any indirect references and returns the final RefAtom. |
| [ResolveObj](1-methods/10-resolveobj.md) | Resolves any indirect references and returns the final IndirectObject. |
| [ToString](1-methods/9-tostring.md) | The string representation of the IndirectObject. |
| [Transcode](1-methods/transcode.md) | Transcodes and reloads the IndirectObject. |

## Properties

| Property | Description |
| --- | --- |
| [ID](2-properties/1-id.md) | The ID of the PDF object. |
| [Gen](2-properties/2-gen.md) | The Generation of the PDF object. |
| [Atom](2-properties/3-atom.md) | The Atom contained by the IndirectObject. |
| [Version](2-properties/4-version.md) | The minimum version of the PDF specification required to support this object. |
| [Revision](2-properties/5-revision.md) | The revision of the document in which this object is stored. |
| [Alive](2-properties/5-alive.md) | Whether the IndirectObject is currently alive. |
| [Doc](2-properties/6-doc.md) | The Doc containing this IndirectObject. |
| [Soup](2-properties/7-soup.md) | The soup containing this IndirectObject. |
| [AdbeExtLevel](2-properties/adbeextlevel.md) | The minimum extension level of Adobe Supplement to the PDF specification required to support this object. |
