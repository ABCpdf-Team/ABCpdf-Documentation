# EntryFilter Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Filter" entry of the signature field seed value dictionary object. |

## Notes

Represents the "Filter" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=455)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=44)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.](https://www.iso.org/standard/63534.html)

The filter name identifies the cryptographic security handler. When the corresponding Ff flag bit is set the signing application must use this handler; when clear it is a suggestion.
