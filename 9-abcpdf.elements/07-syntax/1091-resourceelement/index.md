# ResourceElement Class

This class represents the resource dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 83.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=91)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.](https://www.iso.org/standard/63534.html)

A resource dictionary lists all named resources used by a content stream. Before a content stream can reference a font, image, color space, pattern, shading, XObject, graphics state parameter set, or properties dictionary, that resource must appear in the applicable resource dictionary.

Each entry in the resource dictionary is itself a dictionary mapping resource names to the corresponding PDF objects. Names are chosen by the content stream author and need only be unique within the resource category.

Resource dictionaries are associated with pages, form XObjects, Type 1 patterns, and annotation appearances. A content stream may only use resources listed in its own resource dictionary or inherited from ancestor page tree nodes.

The ProcSet entry holds an array of procedure set names for compatibility with PDF 1.0 and 1.1 readers. These values are ignored by conforming readers but must be present in documents targeting older viewers.

The Properties entry maps names to property list dictionaries used with marked-content operators. This supports tagged PDF and optional content group references within the content stream.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ResourceElement`

## Methods

| Method | Description |
| --- | --- |
| [ResourceElement](1-methods/01-resourceelement.md) | Create a new ResourceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryExtGState](2-properties/01-entryextgstate.md) | Represents the "ExtGState" entry of the resource dictionary object. |
| [EntryColorSpace](2-properties/02-entrycolorspace.md) | Represents the "ColorSpace" entry of the resource dictionary object. |
| [EntryPattern](2-properties/03-entrypattern.md) | Represents the "Pattern" entry of the resource dictionary object. |
| [EntryShading](2-properties/04-entryshading.md) | Represents the "Shading" entry of the resource dictionary object. |
| [EntryXObject](2-properties/05-entryxobject.md) | Represents the "XObject" entry of the resource dictionary object. |
| [EntryFont](2-properties/06-entryfont.md) | Represents the "Font" entry of the resource dictionary object. |
| [EntryProcSet](2-properties/07-entryprocset.md) | Represents the "ProcSet" entry of the resource dictionary object. |
| [EntryProperties](2-properties/08-entryproperties.md) | Represents the "Properties" entry of the resource dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
