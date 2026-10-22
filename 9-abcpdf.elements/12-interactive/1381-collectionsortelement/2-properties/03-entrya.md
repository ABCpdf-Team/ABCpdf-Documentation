# EntryA Property

## Notes

Represents the "A" entry of the collection sort dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains bool representing a PDF boolean objects.

The PDF specification states that items in this array assume a value of true if no value has been provided.

If you read the specification you will see that an array of one bool may be represented as a single bool rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 158, page 373.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 156, page 449.

When true the sort is ascending; when false it is descending. When S is an array, A must be an array of the same length with each element giving the direction for the corresponding sort key.
