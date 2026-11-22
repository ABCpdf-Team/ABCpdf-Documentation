# EntryFontFile3 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EmbeddedFontStreamElement`](../../1298-embeddedfontstreamelement/index.md) | null | No | Represents the "FontFile3" entry of the font descriptor object. |

## Notes

Represents the "FontFile3" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an [EmbeddedFontStreamElement](../../1298-embeddedfontstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 283.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=291)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

FontFile3 holds a font program whose format is identified by the Subtype entry in the stream dictionary. Common subtypes are Type1C for CFF-based Type 1 programs, CIDFontType0C for CFF-based CIDFonts, and OpenType for fonts in the OpenType container format.
