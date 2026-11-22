# EntryLastModified Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "LastModified" entry of the trap network annotation object. |

## Notes

Represents the "LastModified" entry of the trap network annotation object.

It is defined as part of the PDF 1.4 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 366, page 637.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=645)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 403, page 820.](https://www.iso.org/standard/63534.html)

The LastModified entry records when the trap network was last generated as a PDF date string. Comparing this with the page modification date indicates whether the traps need regeneration.
