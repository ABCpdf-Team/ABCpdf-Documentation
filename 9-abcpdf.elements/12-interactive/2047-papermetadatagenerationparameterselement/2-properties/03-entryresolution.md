# EntryResolution Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "Resolution" entry of the papermetadata generation parameters dictionary object. |

## Notes

Represents the "Resolution" entry of the papermetadata generation parameters dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 300 if no value has been provided.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.39b, page 47.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=47)

The resolution in dots per inch specifies the output resolution at which the barcode will be printed.
