# EntryCert Property

## Notes

Represents the "Cert" entry of the signature dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 566.

The Cert entry carries the signing certificate or certificate chain as an array of DER-encoded byte strings. Some signature formats encode the certificate within the Contents bytes instead.
