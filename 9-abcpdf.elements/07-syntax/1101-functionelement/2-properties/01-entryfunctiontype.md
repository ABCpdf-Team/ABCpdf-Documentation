# EntryFunctionType Property

## Notes

Represents the "FunctionType" entry of the function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 38, page 93.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 38, page 122.

The FunctionType integer selects the function algorithm: 0 for sampled, 2 for exponential interpolation, 3 for stitching, and 4 for PostScript calculator. The type determines which additional entries are required in the function dictionary.
