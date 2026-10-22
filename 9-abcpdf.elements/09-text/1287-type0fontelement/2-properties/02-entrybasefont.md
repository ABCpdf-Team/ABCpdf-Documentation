# EntryBaseFont Property

## Notes

Represents the "BaseFont" entry of the type 0 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 121, page 279.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 119, page 338.

For type 0 fonts this is usually the PostScript name of the CIDFont descendant, sometimes followed by a hyphen and the CMap name to indicate the writing direction variant, such as MyFont-Identity-H.

Subset fonts carry the six-letter uppercase tag prefix as with simple fonts.
