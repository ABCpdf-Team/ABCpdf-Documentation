# EntryEncoding Property

## Notes

Represents the "Encoding" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an EncodingElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.

For type 3 fonts, Encoding must be an EncodingElement dictionary. A bare encoding name is not permitted. The Differences array in that dictionary maps character codes to glyph names, which must correspond to keys in the CharProcs dictionary.

Character codes not listed in the Differences array, and not covered by the base encoding, produce no glyph output.
