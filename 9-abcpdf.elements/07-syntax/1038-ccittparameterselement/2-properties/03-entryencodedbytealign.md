# EntryEncodedByteAlign Property

## Notes

Represents the "EncodedByteAlign" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 31.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 43.

The EncodedByteAlign entry, when true, requires each encoded scan line to begin on a byte boundary. Padding bits are added after each end-of-line code to align the next line. This entry applies only to Group 3 encoding.
