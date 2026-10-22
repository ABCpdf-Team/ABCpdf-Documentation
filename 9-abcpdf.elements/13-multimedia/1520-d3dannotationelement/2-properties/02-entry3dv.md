# Entry3DV Property

## Notes

Represents the "3DV" entry of the 3d annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of four different types:.

1) An integer representing a PDF numeric object.

2) A string representing a PDF name object.

This item may take one of the following valid values:.

FLD.

3) A string representing a PDF string object.

4) A D3DViewElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 298, page 512.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.33, page 55.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 309, page 640.

The 3DV entry identifies the default view for the 3D annotation. It may be an integer index into the 3D stream VA array, a text string matching the XN or IN name of a view, or a 3D view dictionary.
