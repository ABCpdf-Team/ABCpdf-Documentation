# EntryCert Property

## Notes

Represents the "Cert" entry of the signature validation-related information dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains StreamElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.

Each stream holds a DER-encoded X.509 certificate relevant to this specific signature. Including the full chain here, in addition to the top-level Certs array, ensures a verifier can find all needed certificates even if it examines only the per-signature VRI entry.
