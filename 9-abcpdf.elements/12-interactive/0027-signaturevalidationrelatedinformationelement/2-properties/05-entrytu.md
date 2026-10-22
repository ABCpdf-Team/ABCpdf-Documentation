# EntryTU Property

## Notes

Represents the "TU" entry of the signature validation-related information dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.

The timestamp records when this VRI entry was created or last updated, encoded as a PDF date string. Verifiers can use this date to assess whether the included revocation data was current at the relevant time.
