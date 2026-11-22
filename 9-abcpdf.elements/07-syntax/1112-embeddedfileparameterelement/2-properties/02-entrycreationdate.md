# EntryCreationDate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CreationDate" entry of the embedded file parameter dictionary object. |

## Notes

Represents the "CreationDate" entry of the embedded file parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 46, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 45, page 137.](https://www.iso.org/standard/63534.html)

The CreationDate entry holds the date and time the original file was created, encoded as a PDF date string. This date refers to the file as it existed before embedding, not to the time it was added to the PDF.
