# EntryS Property

## Notes

Represents the "S" entry of the collection sort dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 158, page 373.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 156, page 449.

The S entry names the schema field to sort by. It must match a key in the collection schema dictionary. When S is an array the corresponding elements of the A array are applied as successive sort keys.
