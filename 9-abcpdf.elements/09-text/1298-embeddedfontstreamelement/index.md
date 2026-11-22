# EmbeddedFontStreamElement Class

This class represents the embedded font stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 127, page 290.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=298)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 125, page 350.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EmbeddedFontStreamElement`

An embedded font stream carries the binary data of a font program. The stream dictionary extends the standard stream structure with entries that describe the internal layout of the font data.

Length1, Length2, and Length3 divide the stream body into sections. For Type 1 font programs, Length1 is the length of the clear-text section, Length2 is the length of the encrypted section, and Length3 is the length of the fixed-content section. For TrueType programs, only Length1 is used and it gives the total length of the uncompressed font file.

Subtype identifies the font program format when the stream is referenced from FontFile3. Common values are Type1C for CFF-based Type 1 programs, CIDFontType0C for CFF-based CIDFonts, and OpenType for OpenType programs. This entry is absent for FontFile and FontFile2 streams.

The stream body may be compressed using any standard PDF filter. The Length entries always refer to the decompressed data; the stream's Filter and Length entries in the stream dictionary handle the compression layer.

## Methods

| Method | Description |
| --- | --- |
| [EmbeddedFontStreamElement](1-methods/01-embeddedfontstreamelement.md) | Create a new EmbeddedFontStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryLength1](2-properties/02-entrylength1.md) | Represents the "Length1" entry of the embedded font stream dictionary object. |
| [EntryLength2](2-properties/03-entrylength2.md) | Represents the "Length2" entry of the embedded font stream dictionary object. |
| [EntryLength3](2-properties/04-entrylength3.md) | Represents the "Length3" entry of the embedded font stream dictionary object. |
| [EntrySubtype](2-properties/05-entrysubtype.md) | Represents the "Subtype" entry of the embedded font stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
