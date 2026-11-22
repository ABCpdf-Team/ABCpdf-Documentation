# EntryTU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "TU" entry of the signature validation-related information dictionary object. |

## Notes

Represents the "TU" entry of the signature validation-related information dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.](https://www.iso.org/standard/63534.html)

The timestamp records when this VRI entry was created or last updated, encoded as a PDF date string. Verifiers can use this date to assess whether the included revocation data was current at the relevant time.
