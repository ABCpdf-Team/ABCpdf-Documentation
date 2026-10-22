# EntryData Property

## Notes

Represents the "Data" entry of the view params dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

This property may contain one of two different types:.

1) A string representing a PDF string object.

2) A StreamElement.

For definitive details see:.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51g, page 93.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 345, page 707.

The data entry holds the view state in a format specific to the media type. For 3D content it encodes the camera position, orientation, and projection parameters.
