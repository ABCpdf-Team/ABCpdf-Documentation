# EntryBaseFont Property

## Notes

Represents the "BaseFont" entry of the truetype font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.

For TrueType fonts this is the PostScript name derived from the font's name table. When the font is embedded as a subset, a six-letter uppercase tag is prepended, separated by a plus sign.

Viewers use this name to locate the font. If the font is not embedded and is not a system font, the viewer may substitute a metrically similar font.
