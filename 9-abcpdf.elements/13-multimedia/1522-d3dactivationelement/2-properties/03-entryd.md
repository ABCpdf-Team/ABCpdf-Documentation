# EntryD Property

## Notes

Represents the "D" entry of the 3d activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "PI" if no value has been provided.

This item may take one of the following valid values:.

PCPIXD

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 299, page 514.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.34, page 56.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 310, page 642.

The D entry names the deactivation condition: XD for explicit deactivation by a JavaScript action, PC for page close, or PI for page invisible (deactivate when the page leaves the viewport).
