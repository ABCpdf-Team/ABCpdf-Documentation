# EntryStmF Property

## Notes

Represents the "StmF" entry of the encryption dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Identity" if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 56.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 72.

The StmF entry names the crypt filter applied to all streams in the document except embedded file streams. The named filter must be defined in the CF dictionary. The special value Identity means streams are not encrypted.
