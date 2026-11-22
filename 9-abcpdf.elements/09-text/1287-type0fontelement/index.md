# Type0FontElement Class

This class represents the type 0 font dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 121, page 279.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=287)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 119, page 338.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FontElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FontElement`](../1262-fontelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type0FontElement`

A type 0 font is a composite font that maps multi-byte character codes to glyphs through a combination of a CMap encoding and one or more CIDFont descendants. It is the standard mechanism in PDF for handling large character sets such as Chinese, Japanese, and Korean.

The Encoding entry names the CMap used to interpret character codes in text strings. It can be a predefined CMap name such as Identity-H or a reference to a CMap stream. The CMap converts character codes to CIDs, which the CIDFont then maps to glyphs.

DescendantFonts holds an array containing exactly one CIDFont dictionary. The CIDFont provides the glyph outlines and per-glyph metrics. Its CIDSystemInfo must be compatible with that of the CMap.

BaseFont names the font for display purposes. For type 0 fonts it typically reflects the PostScript name of the CIDFont, sometimes with a CMap suffix such as -Identity-H.

ToUnicode is particularly important for type 0 fonts because the character codes in the content stream are not directly Unicode values. Without a ToUnicode stream, text extraction tools cannot reliably recover the Unicode text from the PDF.

## Methods

| Method | Description |
| --- | --- |
| [Type0FontElement](1-methods/01-type0fontelement.md) | Create a new Type0FontElement. |
|  | [inherited methods...](../1262-fontelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the type 0 font dictionary object. |
| [EntryBaseFont](2-properties/02-entrybasefont.md) | Represents the "BaseFont" entry of the type 0 font dictionary object. |
| [EntryEncoding](2-properties/03-entryencoding.md) | Represents the "Encoding" entry of the type 0 font dictionary object. |
| [EntryDescendantFonts](2-properties/04-entrydescendantfonts.md) | Represents the "DescendantFonts" entry of the type 0 font dictionary object. |
| [EntryToUnicode](2-properties/05-entrytounicode.md) | Represents the "ToUnicode" entry of the type 0 font dictionary object. |
|  | [inherited properties...](../1262-fontelement/index.md) |
