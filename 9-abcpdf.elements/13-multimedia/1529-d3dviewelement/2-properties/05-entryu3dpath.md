# EntryU3DPath Property

## Notes

Represents the "U3DPath" entry of the 3d view dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 304, page 521.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39, page 57.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 344, page 707.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51f, page 93.

The U3DPath entry holds the path to a camera node within the U3D model hierarchy as a byte string or array of byte strings. When present, this node defines the view rather than the C2W matrix.
