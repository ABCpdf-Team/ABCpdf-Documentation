# EntryModDate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "ModDate" entry of the document information dictionary object. |

## Notes

Represents the "ModDate" entry of the document information dictionary object.

It is an optional entry defined as part of the PDF 1.1 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 317, page 550.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=558)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 349, page 713.](https://www.iso.org/standard/63534.html)

The ModDate entry gives the date and time the document was most recently modified. It should be updated whenever the document changes. In PDF 2.0, preferably recorded in XMP metadata using xmp:ModifyDate.
