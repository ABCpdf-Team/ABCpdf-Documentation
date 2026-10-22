# EntryLayout Property

## Notes

Represents the "Layout" entry of the navigator dictionary object.

It is a required entry defined as part of the PDF 2.0 specification.

It contains an array which contains strings, representing PDF name objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6d, page 34.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 160, page 454.

The layout dictionary provides layout parameters that the navigator uses to configure its initial panel arrangement.
