# EntryKeyUsage Property

## Notes

Represents the "KeyUsage" entry of the certificate seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an array which contains strings, representing PDF string objects.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 450.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 546.

Each element of the array is a ten-character string of zeros and ones mapping to the nine key-usage extension bits defined by RFC 5280. A one character requires the corresponding usage bit to be set in the signing certificate.
