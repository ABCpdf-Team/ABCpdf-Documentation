# EntryC2W Property

## Notes

Represents the "C2W" entry of the 3d view dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 304, page 521.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39, page 57.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 344, page 707.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51f, page 93.

The C2W entry holds a 12-element array defining the camera-to-world transformation. The first 9 elements form a 3x3 rotation matrix (columns are the camera right, up, and negative-forward vectors) and the last 3 elements give the camera position in world coordinates.
