# EntrySubject Property

## Notes

Represents the "Subject" entry of the certificate seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 449.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 545.

Each stream in the Subject array holds the DER-encoded bytes of one acceptable signing certificate. The signing application must use a certificate exactly matching one of these byte sequences.
