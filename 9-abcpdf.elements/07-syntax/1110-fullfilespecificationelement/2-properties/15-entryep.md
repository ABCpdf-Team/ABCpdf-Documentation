# EntryEP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EncryptedPayloadElement`](../../0010-encryptedpayloadelement/index.md) | null | No | Represents the "EP" entry of the full file specification dictionary object. |

## Notes

Represents the "EP" entry of the full file specification dictionary object.

It is defined as part of the PDF 2.0 specification.

It contains an [EncryptedPayloadElement](../../0010-encryptedpayloadelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 102.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=110)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=26)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 134.](https://www.iso.org/standard/63534.html)

The EP entry references an encrypted payload dictionary when this file specification is used to attach an encrypted payload to a PDF wrapper document. It is used in the PDF 2.0 encrypted payload mechanism.
