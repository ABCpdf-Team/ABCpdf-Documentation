# Type3FontElement Class

This class represents the type 3 font dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 258.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=266)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 314.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FontElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FontElement`](../1262-fontelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type3FontElement`

A type 3 font differs from all other font types in that the glyph shapes are defined by PDF content streams stored directly in the file, rather than by an embedded font program. Each glyph is a named content stream in the CharProcs dictionary.

The FontMatrix maps glyph space coordinates to text space. The conventional value scales glyph units so that 1000 glyph units equal one text space unit, matching the convention used by Type1 and TrueType. Other values can be used to suit the coordinate system of the glyph streams.

FontBBox gives the bounding box of the font in glyph space. It should enclose all glyphs. The viewer may use it to clip glyph rendering. Giving a zero-size box disables clipping.

Encoding maps character codes to glyph names. Unlike type 1 and TrueType, type 3 encoding must use an EncodingElement dictionary; a bare encoding name is not permitted.

The Resources entry lists the PDF resources, such as graphics state parameters or images, that the glyph streams may reference. If a glyph stream uses no external resources, Resources can be an empty dictionary.

Type3 fonts are device-dependent because the glyph streams are rendered in user space. The same glyphs may look different at different sizes or on different devices.

## Methods

| Method | Description |
| --- | --- |
| [Type3FontElement](1-methods/01-type3fontelement.md) | Create a new Type3FontElement. |
|  | [inherited methods...](../1262-fontelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the type 3 font dictionary object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the type 3 font dictionary object. |
| [EntryFontBBox](2-properties/03-entryfontbbox.md) | Represents the "FontBBox" entry of the type 3 font dictionary object. |
| [EntryFontMatrix](2-properties/04-entryfontmatrix.md) | Represents the "FontMatrix" entry of the type 3 font dictionary object. |
| [EntryCharProcs](2-properties/05-entrycharprocs.md) | Represents the "CharProcs" entry of the type 3 font dictionary object. |
| [EntryEncoding](2-properties/06-entryencoding.md) | Represents the "Encoding" entry of the type 3 font dictionary object. |
| [EntryFirstChar](2-properties/07-entryfirstchar.md) | Represents the "FirstChar" entry of the type 3 font dictionary object. |
| [EntryLastChar](2-properties/08-entrylastchar.md) | Represents the "LastChar" entry of the type 3 font dictionary object. |
| [EntryWidths](2-properties/09-entrywidths.md) | Represents the "Widths" entry of the type 3 font dictionary object. |
| [EntryFontDescriptor](2-properties/10-entryfontdescriptor.md) | Represents the "FontDescriptor" entry of the type 3 font dictionary object. |
| [EntryResources](2-properties/11-entryresources.md) | Represents the "Resources" entry of the type 3 font dictionary object. |
| [EntryToUnicode](2-properties/12-entrytounicode.md) | Represents the "ToUnicode" entry of the type 3 font dictionary object. |
|  | [inherited properties...](../1262-fontelement/index.md) |
