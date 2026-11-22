# EntryEncryptionRevision Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "EncryptionRevision" entry of the embedded file stream dictionary object. |

## Notes

Represents the "EncryptionRevision" entry of the embedded file stream dictionary object.

It is defined as part of the PDF 1.4 specification. It was deprecated in PDF 2.0.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 45, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 44, page 136.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 244, page 460.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=468)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 247, page 558.](https://www.iso.org/standard/63534.html)

The EncryptionRevision entry records the revision number of the document's encryption handler that was in use when this embedded file stream was created. When the document's encryption is later upgraded, this entry helps determine the correct decryption parameters for the stream.
