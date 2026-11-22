# TrueTypeFontElement Class

This class represents the truetype font dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=265)

This class is always an indirect object because it inherits from FontElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FontElement`](../1262-fontelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.TrueTypeFontElement`

A TrueType font dictionary describes a font whose glyphs are defined using TrueType outlines. The structure closely follows the type 1 model: BaseFont names the font, Widths gives per-character advance widths, and FontDescriptor carries detailed metrics and the embedded font program.

The Widths array runs from FirstChar to LastChar and gives advance widths in thousandths of a text space unit, consistent with the type 1 convention. Character codes outside this range use MissingWidth from the FontDescriptor.

Encoding works the same way as for type 1 fonts. A named encoding or an EncodingElement dictionary maps single-byte character codes to glyph names, which the font program then resolves to outlines.

TrueType fonts can be embedded as FontFile2 streams in the FontDescriptor. Subsetting is common: only the glyphs actually used in the document are included, with a tag prefix added to the font name to mark it as a subset.

## Methods

| Method | Description |
| --- | --- |
| [TrueTypeFontElement](1-methods/01-truetypefontelement.md) | Create a new TrueTypeFontElement. |
|  | [inherited methods...](../1262-fontelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the truetype font dictionary object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the truetype font dictionary object. |
| [EntryBaseFont](2-properties/03-entrybasefont.md) | Represents the "BaseFont" entry of the truetype font dictionary object. |
| [EntryFirstChar](2-properties/04-entryfirstchar.md) | Represents the "FirstChar" entry of the truetype font dictionary object. |
| [EntryLastChar](2-properties/05-entrylastchar.md) | Represents the "LastChar" entry of the truetype font dictionary object. |
| [EntryWidths](2-properties/06-entrywidths.md) | Represents the "Widths" entry of the truetype font dictionary object. |
| [EntryFontDescriptor](2-properties/07-entryfontdescriptor.md) | Represents the "FontDescriptor" entry of the truetype font dictionary object. |
| [EntryEncoding](2-properties/08-entryencoding.md) | Represents the "Encoding" entry of the truetype font dictionary object. |
| [EntryToUnicode](2-properties/09-entrytounicode.md) | Represents the "ToUnicode" entry of the truetype font dictionary object. |
|  | [inherited properties...](../1262-fontelement/index.md) |
