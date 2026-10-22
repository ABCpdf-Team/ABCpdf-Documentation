# EntryCerts Property

## Notes

Represents the "Certs" entry of the document security store dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains StreamElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 583.

Each stream in the array holds a single DER-encoded X.509 certificate. These are the certificates needed to build trust chains for all signatures in the document and may include intermediate certificates shared across multiple signatures.
