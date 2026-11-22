# EntryTS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "TS" entry of the 3d angular dimension measurement object. |

## Notes

Represents the "TS" entry of the 3d angular dimension measurement object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 12 if no value has been provided.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39d, page 68.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=68)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 329, page 690.](https://www.iso.org/standard/63534.html)

The TS entry holds the formatted angle measurement text string, including the numeric value and optionally a degree symbol or other unit indicator.
