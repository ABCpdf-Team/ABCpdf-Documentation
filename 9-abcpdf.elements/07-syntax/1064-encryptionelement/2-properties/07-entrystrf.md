# EntryStrF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "StrF" entry of the encryption dictionary object. |

## Notes

Represents the "StrF" entry of the encryption dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Identity" if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 57.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=65)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=14)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 72.](https://www.iso.org/standard/63534.html)

The StrF entry names the crypt filter applied to all string objects in the document. Like StmF, it must name a filter in the CF dictionary or the special value Identity for unencrypted strings.
