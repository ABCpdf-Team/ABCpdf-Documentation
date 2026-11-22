# EntryAddRevInfo Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "AddRevInfo" entry of the signature field seed value dictionary object. |

## Notes

Represents the "AddRevInfo" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 449.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=457)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=44)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 544.](https://www.iso.org/standard/63534.html)

When true and the corresponding Ff flag bit is set the signing application must embed revocation information in the signature for long-term validation support.
