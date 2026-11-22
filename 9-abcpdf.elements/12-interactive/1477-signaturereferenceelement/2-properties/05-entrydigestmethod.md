# EntryDigestMethod Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "DigestMethod" entry of the signature reference dictionary object. |

## Notes

Represents the "DigestMethod" entry of the signature reference dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "MD5" if no value has been provided.

This item may take one of the following valid values:.

- MD5
- SHA1

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 253, page 470.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=478)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 256, page 568.](https://www.iso.org/standard/63534.html)

The digest method name identifies the hash algorithm applied to the transform output. Common values are SHA1, SHA256, SHA384, and SHA512.
