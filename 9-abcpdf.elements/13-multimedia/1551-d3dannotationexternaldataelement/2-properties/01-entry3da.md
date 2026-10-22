# Entry3DA Property

## Notes

Represents the "3DA" entry of the external data dictionary used to markup 3d annotations object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF string object.

2) A D3DAnnotationElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 313, page 543.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 324, page 676.

The 3DA entry holds an indirect reference to the 3D stream dictionary for this annotation. The stream contains the 3D model data and view definitions.
