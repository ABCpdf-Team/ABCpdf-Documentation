# EntryFontBBox Property

## Notes

Represents the "FontBBox" entry of the font descriptor object.

It is defined as part of the PDF 1.0 specification.

It contains a RectangleElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

The bounding box is expressed in glyph space, the same coordinate system used for glyph width values. It should enclose all glyphs in the font, though some glyph programs may paint slightly outside this box.

Viewers use this value to determine how much space to reserve when rendering glyphs and for clipping calculations.
