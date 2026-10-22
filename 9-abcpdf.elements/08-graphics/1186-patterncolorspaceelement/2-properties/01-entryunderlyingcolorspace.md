# EntryUnderlyingColorSpace Property

## Notes

This property represents the underlying color space for this pattern.

It is defined as part of the PDF 1.2 specification.

A ColorSpaceElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 178.

The underlying color space is required when the Pattern space is used with an uncolored (PaintType 2) tiling pattern. It specifies the color space in which the current color is expressed when painting the pattern.

When the Pattern color space is used with a colored (PaintType 1) pattern or a shading pattern, no underlying color space is needed and this entry is absent.
