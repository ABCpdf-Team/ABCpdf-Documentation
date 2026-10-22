# EntryA Property

## Notes

Represents the "A" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains AttributesElements.

If you read the specification you will see that an array of one AttributesElement may be represented as a single AttributesElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.

The A entry holds attribute objects describing visual and structural properties. It may be a single attribute dictionary or stream, or an array interleaving attribute objects with PDF revision numbers.
