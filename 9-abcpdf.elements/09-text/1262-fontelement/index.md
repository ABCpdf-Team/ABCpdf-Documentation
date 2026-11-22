# FontElement Class

This class represents the font dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 254.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=262)

This class is always an indirect object because GraphicsStateParameterElement.EntryFont requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FontElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.CIDFontElement`](../1277-cidfontelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.TrueTypeFontElement`](../1265-truetypefontelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type0FontElement`](../1287-type0fontelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type1FontElement`](../1262-type1fontelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type3FontElement`](../1266-type3fontelement/index.md)

A font dictionary tells a PDF viewer how to find, identify, and measure the glyphs used in a piece of text. Every font used in a PDF file must be represented by a font dictionary, and every font dictionary must be an indirect object.

The Subtype entry in each font dictionary tells the viewer which font model applies. The supported models are Type1, MMType1, TrueType, Type3, Type0, CIDFontType0, and CIDFontType2. Each model has its own set of required and optional entries.

Type1 and TrueType are the most common simple fonts. They address characters by a single byte code and map that code to a glyph through an encoding. Type0 is the composite font model, which uses multi-byte character codes and delegates glyph selection to one or more CIDFont descendants.

Type3 is the only font type where the glyph shapes are defined directly in the PDF file as content streams rather than in an external font program. All other types reference an embedded or system font.

FontElement is the base class. Always use the subclass that matches the Subtype value in the dictionary, since each subclass exposes the entries that belong to that font model.

## Methods

| Method | Description |
| --- | --- |
| [FontElement](1-methods/01-fontelement.md) | Create a new FontElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the font dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
