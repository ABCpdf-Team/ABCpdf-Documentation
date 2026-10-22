# EntryOCGs Property

## Notes

Represents the "OCGs" entry of the optional content membership dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains OptionalContentGroupElements.

If you read the specification you will see that an array of one OptionalContentGroupElement may be represented as a single OptionalContentGroupElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 99, page 223.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 97, page 275.

The OCGs entry lists the optional content groups whose states are combined by the membership dictionary's policy. The list may contain direct OCG references or, for VE expressions, nested structures.
