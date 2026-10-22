# EntryDL Property

## Notes

Represents the "DL" entry of the stream object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 21.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.

The DL entry gives the number of bytes in the stream after all filters have been decoded. This allows an application to allocate a receive buffer of the correct size before decoding begins, avoiding reallocation during decoding.

DL is particularly useful for large streams where pre-allocation is important for performance. It is advisory; a reader should not rely on it for correctness but may use it for optimisation.
