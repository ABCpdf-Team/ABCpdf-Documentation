# EntryFf Property

## Notes

Represents the "Ff" entry of the certificate seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 449.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 545.

The Ff integer marks individual entries as mandatory or advisory. Bit 1 applies to Subject and SubjectDN, bit 2 to KeyUsage, bit 4 to Issuer, bit 8 to OID. When a bit is set the corresponding constraint is mandatory.
