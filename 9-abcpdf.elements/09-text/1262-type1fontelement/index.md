# Type1FontElement Class

This class represents the type 1 font dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 254.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=262)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FontElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FontElement`](../1262-fontelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type1FontElement`

A type 1 font dictionary describes a PostScript Type 1 or Multiple Master font. It identifies the font by name through BaseFont, maps character codes to glyph widths through the Widths array, and can reference a FontDescriptor for detailed metric and embedding information.

The Widths array covers the character codes from FirstChar to LastChar inclusive. Each entry gives the advance width of the glyph at that code position, measured in units of 1/1000 of a text space unit. Codes outside this range use the MissingWidth value from the FontDescriptor.

The encoding controls which character codes map to which glyph names. A named encoding such as WinAnsiEncoding selects a standard mapping; an EncodingElement dictionary can start from a named base and apply per-glyph overrides through the Differences array.

The 14 standard Type1 fonts are always available in a conforming viewer without embedding. For any other Type1 font, the font program should be embedded in the FontDescriptor to ensure correct rendering across all viewers.

MMType1 is the Multiple Master variant, which supports interpolation between design axes such as weight and width. The mechanics are the same as Type1 but the font program contains multiple master designs.

## Methods

| Method | Description |
| --- | --- |
| [Type1FontElement](1-methods/01-type1fontelement.md) | Create a new Type1FontElement. |
|  | [inherited methods...](../1262-fontelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the type 1 font dictionary object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the type 1 font dictionary object. |
| [EntryBaseFont](2-properties/03-entrybasefont.md) | Represents the "BaseFont" entry of the type 1 font dictionary object. |
| [EntryFirstChar](2-properties/04-entryfirstchar.md) | Represents the "FirstChar" entry of the type 1 font dictionary object. |
| [EntryLastChar](2-properties/05-entrylastchar.md) | Represents the "LastChar" entry of the type 1 font dictionary object. |
| [EntryWidths](2-properties/06-entrywidths.md) | Represents the "Widths" entry of the type 1 font dictionary object. |
| [EntryFontDescriptor](2-properties/07-entryfontdescriptor.md) | Represents the "FontDescriptor" entry of the type 1 font dictionary object. |
| [EntryEncoding](2-properties/08-entryencoding.md) | Represents the "Encoding" entry of the type 1 font dictionary object. |
| [EntryToUnicode](2-properties/09-entrytounicode.md) | Represents the "ToUnicode" entry of the type 1 font dictionary object. |
|  | [inherited properties...](../1262-fontelement/index.md) |
