# EntryEncryptMetadata Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "EncryptMetadata" entry of the public-key security handler crypt filter object. |

## Notes

Represents the "EncryptMetadata" entry of the public-key security handler crypt filter object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 27, page 69.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=77)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 27, page 92.](https://www.iso.org/standard/63534.html)

The EncryptMetadata entry in a public-key crypt filter controls whether the document metadata is covered by this filter's encryption. When false, metadata remains accessible without decryption regardless of the filter settings.
