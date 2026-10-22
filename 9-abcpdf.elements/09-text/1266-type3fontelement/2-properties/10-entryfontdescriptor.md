# EntryFontDescriptor Property

## Notes

Represents the "FontDescriptor" entry of the type 3 font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a FontDescriptorElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.

Type 3 fonts do not have external font programs, so the FontDescriptor carries no font file stream. When present, it provides the font metrics that viewers use for layout and accessibility.

In PDF 2.0 this entry became required for tagged PDF documents to support accessibility processing.
