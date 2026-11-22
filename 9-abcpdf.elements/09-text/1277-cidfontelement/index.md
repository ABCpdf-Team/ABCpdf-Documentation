# CIDFontElement Class

This class represents the cidfont dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 269.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=277)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FontElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FontElement`](../1262-fontelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.CIDFontElement`

A CIDFont dictionary describes a font that uses two-byte character identifiers, called CIDs, to select glyphs. CIDFonts are not used directly as top-level fonts; they always appear as the descendant of a type 0 composite font, which handles the mapping from character codes to CIDs.

Subtype is either CIDFontType0 for CIDFont programs based on Type 1 outlines, or CIDFontType2 for those based on TrueType outlines. The two subtypes share the same dictionary structure but embed different kinds of font programs.

The CIDSystemInfo entry identifies the character collection the font covers. The encoding in the parent type 0 dictionary must be compatible with this collection.

DW gives the default advance width for glyphs not listed in W. W provides explicit widths for specific CIDs or ranges of CIDs, overriding the default. The DW2 and W2 entries serve the same purpose for vertical writing: DW2 is a two-element default, and W2 provides per-CID overrides.

CIDToGIDMap is only valid for CIDFontType2 fonts. When present as a stream, it maps each CID to the glyph index in the TrueType font program. The name Identity means CID and glyph index are the same, which is the common case for fonts whose glyph order matches their CID order.

## Methods

| Method | Description |
| --- | --- |
| [CIDFontElement](1-methods/01-cidfontelement.md) | Create a new CIDFontElement. |
|  | [inherited methods...](../1262-fontelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the cidfont dictionary object. |
| [EntryBaseFont](2-properties/02-entrybasefont.md) | Represents the "BaseFont" entry of the cidfont dictionary object. |
| [EntryCIDSystemInfo](2-properties/03-entrycidsysteminfo.md) | Represents the "CIDSystemInfo" entry of the cidfont dictionary object. |
| [EntryFontDescriptor](2-properties/04-entryfontdescriptor.md) | Represents the "FontDescriptor" entry of the cidfont dictionary object. |
| [EntryDW](2-properties/05-entrydw.md) | Represents the "DW" entry of the cidfont dictionary object. |
| [EntryW](2-properties/06-entryw.md) | Represents the "W" entry of the cidfont dictionary object. |
| [EntryDW2](2-properties/07-entrydw2.md) | Represents the "DW2" entry of the cidfont dictionary object. |
| [EntryW2](2-properties/08-entryw2.md) | Represents the "W2" entry of the cidfont dictionary object. |
| [EntryCIDToGIDMap](2-properties/09-entrycidtogidmap.md) | Represents the "CIDToGIDMap" entry of the cidfont dictionary object. |
|  | [inherited properties...](../1262-fontelement/index.md) |
