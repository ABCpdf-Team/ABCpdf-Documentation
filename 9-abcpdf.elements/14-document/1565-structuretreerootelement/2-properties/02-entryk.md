# EntryK Property

## Notes

Represents the "K" entry of the structure tree root object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains StructureElementElements.

If you read the specification you will see that an array of one StructureElementElement may be represented as a single StructureElementElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 719.

The K entry references the top-level structure element or an array of top-level structure elements. All other structure elements in the document descend from these roots.
