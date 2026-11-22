# EntryOCSPs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`StreamElement`](../../../07-syntax/1028-streamelement/index.md)`>` | null | No | Represents the "OCSPs" entry of the document security store dictionary object. |

## Notes

Represents the "OCSPs" entry of the document security store dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [StreamElements](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 583.](https://www.iso.org/standard/63534.html)

Each stream holds a single DER-encoded OCSP response confirming the revocation status of a certificate at a specific time, supporting long-term signature validation after the original OCSP responders are no longer available.
