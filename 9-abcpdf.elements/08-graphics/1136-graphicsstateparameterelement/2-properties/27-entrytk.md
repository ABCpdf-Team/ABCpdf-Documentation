# EntryTK Property

## Notes

Represents the "TK" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.

The text knockout flag controls how glyphs within a text painting operation composite with each other. When true, each glyph is treated as a separate object that knocks out the accumulated effect of earlier glyphs in the same operation, preventing double-inking of overlapping characters.

When false, glyphs composite cumulatively, which can cause visually visible overlaps in semi-transparent text. TK true is the typical setting for text that should appear solid even at reduced opacity.
