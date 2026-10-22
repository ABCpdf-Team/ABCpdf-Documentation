# EntryStyle Property

## Notes

Represents the "Style" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an Element.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 281.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

Style is a dictionary that carries additional font-style information not covered by the Flags bits. It was introduced in PDF 1.5 to support the CSS-style weight and stretch classifications before FontWeight and FontStretch were added as direct entries.

In current practice, FontWeight and FontStretch are preferred over this dictionary.
