# EntryFunctions Property

## Notes

Represents the "Functions" entry of the type 3 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains FunctionElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 41, page 97.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 41, page 127.

The Functions array holds the sub-functions that make up the stitched function. Each sub-function is applied to a contiguous subdomain. The array has one more element than the Bounds array.
