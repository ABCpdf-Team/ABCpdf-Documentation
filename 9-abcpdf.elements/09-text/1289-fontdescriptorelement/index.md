# FontDescriptorElement Class

This class represents the font descriptor. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 281.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=289)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 122, page 345.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because CIDFontElement.EntryFontDescriptor, TrueTypeFontElement.EntryFontDescriptor, Type1FontElement.EntryFontDescriptor and Type3FontElement.EntryFontDescriptor require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FontDescriptorElement`

A font descriptor carries the metric and structural properties of a font as a whole. It complements the per-glyph width data in the font dictionary with font-level measurements that viewers use for layout, substitution, and text extraction.

FontName must match the BaseFont entry in the font dictionary it belongs to. For subset fonts the name carries a six-letter uppercase tag prefix separated by a plus sign, such as ABCDEF+FontName.

Flags is a 32-bit integer where each bit signals a typographic property of the font. Key bits include FixedPitch (bit 1), Serif (bit 2), Symbolic (bit 3), Script (bit 4), Nonsymbolic (bit 6), Italic (bit 7), AllCap (bit 17), SmallCap (bit 18), and ForceBold (bit 19).

The metric entries, Ascent, Descent, CapHeight, and XHeight, are all measured in the same glyph coordinate space as FontBBox. They give the viewer the data it needs to size and position text, and to simulate bold or italic when the actual variant is unavailable.

StemV and StemH give the typical stroke widths of vertical and horizontal stems. Viewers use these values to choose appropriate font substitutes when the original font is not available and for hinting decisions on low-resolution devices.

The font file entries, FontFile, FontFile2, and FontFile3, each point to an embedded font program stream. FontFile is for Type 1 programs, FontFile2 for TrueType, and FontFile3 for OpenType and other Subtype-labelled formats. Only one of these should be present.

CharSet lists the glyph names present in a Type 1 font subset. It is a PDF string in the format of a PostScript array of name tokens. Viewers may use it to determine which glyphs are available without parsing the font program.

## Methods

| Method | Description |
| --- | --- |
| [FontDescriptorElement](1-methods/01-fontdescriptorelement.md) | Create a new FontDescriptorElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the font descriptor object. |
| [EntryFontName](2-properties/02-entryfontname.md) | Represents the "FontName" entry of the font descriptor object. |
| [EntryFontFamily](2-properties/03-entryfontfamily.md) | Represents the "FontFamily" entry of the font descriptor object. |
| [EntryFontStretch](2-properties/04-entryfontstretch.md) | Represents the "FontStretch" entry of the font descriptor object. |
| [EntryFontWeight](2-properties/05-entryfontweight.md) | Represents the "FontWeight" entry of the font descriptor object. |
| [EntryFlags](2-properties/06-entryflags.md) | Represents the "Flags" entry of the font descriptor object. |
| [EntryFontBBox](2-properties/07-entryfontbbox.md) | Represents the "FontBBox" entry of the font descriptor object. |
| [EntryItalicAngle](2-properties/08-entryitalicangle.md) | Represents the "ItalicAngle" entry of the font descriptor object. |
| [EntryAscent](2-properties/09-entryascent.md) | Represents the "Ascent" entry of the font descriptor object. |
| [EntryDescent](2-properties/10-entrydescent.md) | Represents the "Descent" entry of the font descriptor object. |
| [EntryLeading](2-properties/11-entryleading.md) | Represents the "Leading" entry of the font descriptor object. |
| [EntryCapHeight](2-properties/12-entrycapheight.md) | Represents the "CapHeight" entry of the font descriptor object. |
| [EntryXHeight](2-properties/13-entryxheight.md) | Represents the "XHeight" entry of the font descriptor object. |
| [EntryStemV](2-properties/14-entrystemv.md) | Represents the "StemV" entry of the font descriptor object. |
| [EntryStemH](2-properties/15-entrystemh.md) | Represents the "StemH" entry of the font descriptor object. |
| [EntryAvgWidth](2-properties/16-entryavgwidth.md) | Represents the "AvgWidth" entry of the font descriptor object. |
| [EntryMaxWidth](2-properties/17-entrymaxwidth.md) | Represents the "MaxWidth" entry of the font descriptor object. |
| [EntryMissingWidth](2-properties/18-entrymissingwidth.md) | Represents the "MissingWidth" entry of the font descriptor object. |
| [EntryFontFile](2-properties/19-entryfontfile.md) | Represents the "FontFile" entry of the font descriptor object. |
| [EntryFontFile2](2-properties/20-entryfontfile2.md) | Represents the "FontFile2" entry of the font descriptor object. |
| [EntryFontFile3](2-properties/21-entryfontfile3.md) | Represents the "FontFile3" entry of the font descriptor object. |
| [EntryCharSet](2-properties/22-entrycharset.md) | Represents the "CharSet" entry of the font descriptor object. |
| [EntryStyle](2-properties/23-entrystyle.md) | Represents the "Style" entry of the font descriptor object. |
| [EntryLang](2-properties/24-entrylang.md) | Represents the "Lang" entry of the font descriptor object. |
| [EntryFD](2-properties/25-entryfd.md) | Represents the "FD" entry of the font descriptor object. |
| [EntryCIDSet](2-properties/26-entrycidset.md) | Represents the "CIDSet" entry of the font descriptor object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
