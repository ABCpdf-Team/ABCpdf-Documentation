# EntryDataPrep Property

## Notes

Represents the "DataPrep" entry of the text field object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 229, page 444.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.39a, page 46.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 232, page 537.

The DataPrep entry names the normalisation algorithm applied to the field's text value before it is hashed during signing. Defined values include None and NFC. NFC ensures consistent Unicode normalisation regardless of how the text was entered.
