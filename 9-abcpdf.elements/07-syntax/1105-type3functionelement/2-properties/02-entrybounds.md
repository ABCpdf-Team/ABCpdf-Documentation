# EntryBounds Property

## Notes

Represents the "Bounds" entry of the type 3 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 41, page 97.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 41, page 127.

The Bounds array lists the boundary values that divide the function's domain into subdomains. It contains one fewer value than there are sub-functions. Each boundary value marks the transition from one sub-function to the next.
