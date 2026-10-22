# EntryFontBBox Property

## Notes

Represents the "FontBBox" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a RectangleElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 314.

The bounding box is expressed in glyph space coordinates, before the FontMatrix transformation. It should be large enough to enclose every glyph in the font.

If all four values are zero, the viewer is free to determine the bounding box by other means. This can disable clipping of glyph rendering, which may be useful for glyphs that intentionally paint outside their natural bounds.
