# EntryEncrypt Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EncryptionElement`](../../1064-encryptionelement/index.md) | null | No | Represents the "Encrypt" entry of the cross-reference stream dictionary object. |

## Notes

Represents the "Encrypt" entry of the cross-reference stream dictionary object.

It is defined as part of the PDF 1.1 specification.

It contains an [EncryptionElement](../../1064-encryptionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=58)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 65.](https://www.iso.org/standard/63534.html)

The Encrypt entry in the cross-reference stream references the encryption dictionary, serving the same role as Encrypt in the traditional trailer. It is present when the document is encrypted.
