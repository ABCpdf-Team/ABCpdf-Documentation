# EntryCRL Property

## Notes

Represents the "CRL" entry of the signature validation-related information dictionary object.

It is defined as part of the PDF 2.0 specification.

It contains an array which contains StreamElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.

Each stream holds a DER-encoded certificate revocation list valid at the time of signing and covering one or more certificates in the signing chain.
