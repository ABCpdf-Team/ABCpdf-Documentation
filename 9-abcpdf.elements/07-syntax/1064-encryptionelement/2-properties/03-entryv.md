# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "V" entry of the encryption dictionary object. |

## Notes

Represents the "V" entry of the encryption dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 56.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=64)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=14)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 72.](https://www.iso.org/standard/63534.html)

The V entry selects the encryption algorithm. V 1 uses 40-bit RC4. V 2 uses variable-length RC4 (40 to 128 bits). V 3 is unpublished. V 4 introduces crypt filters and AES-128. V 6, defined in PDF 2.0, uses AES-256 with a revised key derivation algorithm.

Higher V values require higher PDF versions. V 6 requires PDF 2.0 and the revision 6 standard security handler.
