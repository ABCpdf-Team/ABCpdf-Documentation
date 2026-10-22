# EntryWidths Property

## Notes

Represents the "Widths" entry of the type 1 font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 255.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.

The array covers character codes from FirstChar to LastChar inclusive. Each value is the advance width of the glyph at that code position, in units of 1/1000 of a text space unit. A width of zero means the glyph advances by nothing, which is common for combining marks.

For the 14 standard Type1 fonts this entry is optional, because the viewer knows the widths already. For all other fonts it must be present to allow correct text layout.
