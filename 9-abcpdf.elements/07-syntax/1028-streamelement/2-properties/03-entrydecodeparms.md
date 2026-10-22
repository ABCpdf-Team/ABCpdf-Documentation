# EntryDecodeParms Property

## Notes

Represents the "DecodeParms" entry of the stream object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains ParameterElements.

If you read the specification you will see that an array of one ParameterElement may be represented as a single ParameterElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.

The DecodeParms entry holds the parameters for the filter or filters named in Filter. For a single filter it is a dictionary; for multiple filters it is an array with one entry per filter, where null indicates a filter that takes no parameters.
