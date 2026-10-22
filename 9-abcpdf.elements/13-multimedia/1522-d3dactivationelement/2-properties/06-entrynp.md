# EntryNP Property

## Notes

Represents the "NP" entry of the 3d activation dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 299, page 515.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.34, page 56.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 310, page 643.

The NP entry, when true, prevents the 3D renderer from drawing to the annotation area after activation. This allows custom rendering via 3D JavaScript to take over display.
