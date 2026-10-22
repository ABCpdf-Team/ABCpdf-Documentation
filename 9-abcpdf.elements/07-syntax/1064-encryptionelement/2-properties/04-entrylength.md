# EntryLength Property

## Notes

Represents the "Length" entry of the encryption dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification. It was deprecated in PDF 2.0.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 40 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 56.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 72.

The Length entry specifies the encryption key length in bits. For V 2 and V 3 it may range from 40 to 128 in multiples of 8. For V 4 it is fixed at 128. For V 6 it is fixed at 256. The entry is required for V 2 and V 3.
