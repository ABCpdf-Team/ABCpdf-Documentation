# EntryFD Property

## Notes

Represents the "FD" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an Element.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 281.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

FD maps font dictionary names to partial font descriptors that override selected entries of this one. It is used in CIDFont descriptors to associate per-glyph-range metrics with subsets of the font's glyph set.

Each entry in the FD dictionary is itself a font descriptor dictionary containing only the entries that differ from the top-level descriptor.
