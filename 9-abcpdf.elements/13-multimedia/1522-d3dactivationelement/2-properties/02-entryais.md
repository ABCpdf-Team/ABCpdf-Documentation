# EntryAIS Property

## Notes

Represents the "AIS" entry of the 3d activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "L" if no value has been provided.

This item may take one of the following valid values:.

IL

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 299, page 514.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.34, page 56.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 310, page 642.

The AIS entry names the initial state when activated: I for instantiated (the 3D runtime is initialised and the model is loaded but not yet displayed) or L for live (the model is displayed and interactive).
