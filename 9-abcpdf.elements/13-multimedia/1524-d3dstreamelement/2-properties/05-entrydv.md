# EntryDV Property

## Notes

Represents the "DV" entry of the 3d stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of four different types:.

1) An integer representing a PDF numeric object.

2) A string representing a PDF name object.

This item may take one of the following valid values:.

FLD.

3) A string representing a PDF string object.

4) A D3DViewElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 300, page 516.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.35, page 56.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 311, page 645.

The DV entry identifies the default view used when the annotation is first activated. It may be an integer index into VA, a text string matching a view name, or a 3D view dictionary.
