# EntrySize Property

## Notes

Represents the "Size" entry of the type 0 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

Items in this array should have a minimum value of 1.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 39, page 94.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 39, page 124.

The Size array gives the number of sample points along each input dimension. For an n-dimensional function, Size has n elements. The total number of sample sets is the product of all Size values.
