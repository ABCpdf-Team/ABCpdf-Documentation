# EntrySymbology Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Symbology" entry of the papermetadata generation parameters dictionary object. |

## Notes

Represents the "Symbology" entry of the papermetadata generation parameters dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- PDF417
- QRCode
- DataMatrix

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.39b, page 47.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=47)

The symbology name identifies the barcode type to generate, such as PDF417 or DataMatrix.
