# EntryCert Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`StreamElement`](../../../07-syntax/1028-streamelement/index.md)`>` | null | No | Represents the "Cert" entry of the signature validation-related information dictionary object. |

## Notes

Represents the "Cert" entry of the signature validation-related information dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [StreamElements](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.](https://www.iso.org/standard/63534.html)

Each stream holds a DER-encoded X.509 certificate relevant to this specific signature. Including the full chain here, in addition to the top-level Certs array, ensures a verifier can find all needed certificates even if it examines only the per-signature VRI entry.
