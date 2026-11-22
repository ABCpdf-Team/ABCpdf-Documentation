# EntryModDate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "ModDate" entry of the folder dictionary object. |

## Notes

Represents the "ModDate" entry of the folder dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6c, page 32.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=32)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 159, page 451.](https://www.iso.org/standard/63534.html)

The modification date records when the folder was last changed, encoded as a PDF date string.
