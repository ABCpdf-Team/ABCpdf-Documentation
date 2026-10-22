# EntryFontDescriptor Property

## Notes

Represents the "FontDescriptor" entry of the type 1 font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a FontDescriptorElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 255.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 311.

The FontDescriptor carries the font-level metrics and the embedded font program. It is required for all fonts except the 14 standard Type1 fonts, which are always available without embedding.

The font program itself sits in one of the FontFile, FontFile2, or FontFile3 stream entries inside the FontDescriptor. Embedding the font guarantees that the document renders the same way on all viewers regardless of which fonts are installed on the system.
