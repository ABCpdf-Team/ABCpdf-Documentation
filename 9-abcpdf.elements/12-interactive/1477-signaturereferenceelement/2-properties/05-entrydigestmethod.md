# EntryDigestMethod Property

## Notes

Represents the "DigestMethod" entry of the signature reference dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "MD5" if no value has been provided.

This item may take one of the following valid values:.

MD5SHA1

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 253, page 470.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 256, page 568.

The digest method name identifies the hash algorithm applied to the transform output. Common values are SHA1, SHA256, SHA384, and SHA512.
