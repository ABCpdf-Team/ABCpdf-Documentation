# EntryBaseFont Property

## Notes

Represents the "BaseFont" entry of the cidfont dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 269.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.

This is the PostScript name of the CIDFont. For subset fonts it carries a six-letter uppercase tag prefix separated by a plus sign.

The parent type 0 font typically uses the same name, optionally followed by a hyphen and the CMap name, as its own BaseFont value.
