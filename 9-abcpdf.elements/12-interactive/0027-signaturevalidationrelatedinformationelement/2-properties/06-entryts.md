# EntryTS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../../07-syntax/1028-streamelement/index.md) | null | No | Represents the "TS" entry of the signature validation-related information dictionary object. |

## Notes

Represents the "TS" entry of the signature validation-related information dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.](https://www.iso.org/standard/63534.html)

The stream contains a signed timestamp token in DER-encoded CMS format issued by a trusted time-stamping authority, providing cryptographic evidence of the date and time at which the VRI data was assembled.
