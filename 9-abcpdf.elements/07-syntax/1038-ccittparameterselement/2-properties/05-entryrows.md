# EntryRows Property

## Notes

Represents the "Rows" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 31.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 44.

The Rows entry gives the height of the image in scan lines. When EndOfBlock is false, the decoder uses Rows to know when to stop decoding rather than relying on an end-of-facsimile-block code.
