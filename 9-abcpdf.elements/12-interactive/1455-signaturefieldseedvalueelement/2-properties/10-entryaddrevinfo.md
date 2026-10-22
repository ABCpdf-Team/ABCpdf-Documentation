# EntryAddRevInfo Property

## Notes

Represents the "AddRevInfo" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 449.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 544.

When true and the corresponding Ff flag bit is set the signing application must embed revocation information in the signature for long-term validation support.
