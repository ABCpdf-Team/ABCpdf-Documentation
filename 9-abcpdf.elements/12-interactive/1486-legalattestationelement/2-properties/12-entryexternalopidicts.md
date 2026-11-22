# EntryExternalOPIdicts Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "ExternalOPIdicts" entry of the legal attestation dictionary object. |

## Notes

Represents the "ExternalOPIdicts" entry of the legal attestation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 259, page 478.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=486)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 264, page 590.](https://www.iso.org/standard/63534.html)

The integer counts OPI dictionaries referencing external high-resolution images. The full-resolution image is outside the signed document.
