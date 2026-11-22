# EntryLegalAttestation Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "LegalAttestation" entry of the signature field seed value dictionary object. |

## Notes

Represents the "LegalAttestation" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains an array which contains strings, representing PDF string objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 448.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=456)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=44)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 543.](https://www.iso.org/standard/63534.html)

The array provides text strings describing the legal implications of signing this field. The signer should acknowledge these before applying the signature.
