# EntryFf Property

## Notes

Represents the "Ff" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.

The Ff flags integer uses bit positions to mark each seed value restriction as mandatory or advisory. Bit 1 corresponds to Filter, bit 2 to SubFilter, bit 4 to DigestMethod, bit 8 to LegalAttestation, bit 16 to AddRevInfo, and bit 32 to AppearanceFilter.
