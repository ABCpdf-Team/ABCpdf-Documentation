# EntryBlackIs1 Property

## Notes

Represents the "BlackIs1" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 31.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 44.

The BlackIs1 entry controls the polarity of the image. When true, a bit value of 1 represents black and 0 represents white, matching the CCITT standard polarity. When false, the polarity is reversed.
