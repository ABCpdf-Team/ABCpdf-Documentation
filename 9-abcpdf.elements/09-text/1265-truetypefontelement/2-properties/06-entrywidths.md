# EntryWidths Property

## Notes

Represents the "Widths" entry of the truetype font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.

Each value in the array is the advance width of the glyph at the corresponding character code, in 1/1000 text space units. This matches the convention used for Type1 fonts even though TrueType programs store widths in different internal units.

The viewer uses these values for text layout. If the array is absent, the viewer must derive widths from the embedded font program, which adds processing cost.
