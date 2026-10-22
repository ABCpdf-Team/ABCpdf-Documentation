# EntryCRLs Property

## Notes

Represents the "CRLs" entry of the document security store dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains StreamElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 583.

Each stream holds a single DER-encoded certificate revocation list. CRLs are an alternative to OCSP for communicating which certificates have been revoked by their issuing authority.
