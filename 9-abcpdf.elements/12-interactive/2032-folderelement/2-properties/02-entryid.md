# EntryID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "ID" entry of the folder dictionary object. |

## Notes

Represents the "ID" entry of the folder dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6c, page 32.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=32)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 159, page 451.](https://www.iso.org/standard/63534.html)

The ID is a unique non-zero integer within the portfolio. It is used to identify the folder when creating links or references between portfolio elements.
