# EntryV Property

## Notes

Represents the "V" entry of the fdf field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of five different types:.

1) A string representing a PDF name object.

2) An array which contains strings, representing PDF string objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

3) A Null.

4) A SignatureElement.

5) A StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 461.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 559.

The value is imported directly into the target field's V entry. Its type must be compatible with the target field type.
