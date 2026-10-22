# EntryVRI Property

## Notes

Represents the "VRI" entry of the document security store dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an Element.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 583.

The VRI entry is a dictionary whose keys are the uppercase hexadecimal SHA-1 hashes of individual signature byte ranges. Each value is the signature validation-related information dictionary for that signature, grouping the certificate, OCSP, and CRL data specific to it.
