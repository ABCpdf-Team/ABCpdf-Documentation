# EntryPatternType Property

## Notes

Represents the "PatternType" entry of the type 2 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

This item must always be provided and must always take the value "2".

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 76, page 181.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 75, page 225.

A PatternType of 2 identifies this as a shading pattern. This value distinguishes it from Type 1 tiling patterns and tells a conforming reader to use the shading-based rendering algorithm.
