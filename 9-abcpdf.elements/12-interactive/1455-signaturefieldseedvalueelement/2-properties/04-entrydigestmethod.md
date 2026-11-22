# EntryDigestMethod Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "DigestMethod" entry of the signature field seed value dictionary object. |

## Notes

Represents the "DigestMethod" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- SHA1
- SHA256
- SHA384
- SHA512
- RIPEMD160

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=455)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=44)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.](https://www.iso.org/standard/63534.html)

The array lists acceptable digest algorithms in preference order. When the corresponding flag bit is set the signing application must use one of the listed algorithms. Common values are SHA256, SHA384, SHA512, and SHA1.
