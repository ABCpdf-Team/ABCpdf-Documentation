# EntryCert Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CertificateSeedValueElement`](../../1457-certificateseedvalueelement/index.md) | null | No | Represents the "Cert" entry of the signature field seed value dictionary object. |

## Notes

Represents the "Cert" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [CertificateSeedValueElement](../../1457-certificateseedvalueelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 448.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=456)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=44)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.](https://www.iso.org/standard/63534.html)

The certificate seed value dictionary constrains the signing certificate by specifying acceptable subjects, issuers, key-usage requirements, and signature policy object identifiers.
