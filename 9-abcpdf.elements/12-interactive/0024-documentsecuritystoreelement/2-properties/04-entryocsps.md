# EntryOCSPs Property

## Notes

Represents the "OCSPs" entry of the document security store dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains StreamElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 583.

Each stream holds a single DER-encoded OCSP response confirming the revocation status of a certificate at a specific time, supporting long-term signature validation after the original OCSP responders are no longer available.
