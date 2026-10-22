# EntryEndOfBlock Property

## Notes

Represents the "EndOfBlock" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 31.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 44.

The EndOfBlock entry controls whether an end-of-facsimile-block code terminates the encoded data. When true, the decoder reads until it finds this code. When false, it reads the number of rows given by the Rows entry.
