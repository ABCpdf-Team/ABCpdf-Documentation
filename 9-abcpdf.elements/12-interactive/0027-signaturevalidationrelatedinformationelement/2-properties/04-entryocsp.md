# EntryOCSP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`StreamElement`](../../../07-syntax/1028-streamelement/index.md)`>` | null | No | Represents the "OCSP" entry of the signature validation-related information dictionary object. |

## Notes

Represents the "OCSP" entry of the signature validation-related information dictionary object.

It is defined as part of the PDF 2.0 specification.

It contains an array which contains [StreamElements](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.](https://www.iso.org/standard/63534.html)

Each stream holds a DER-encoded OCSP response confirming the revocation status of one certificate in the signing chain at the time of signing.
