# EntrySignaturePolicyCommitmentType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "SignaturePolicyCommitmentType" entry of the certificate seed value dictionary object. |

## Notes

Represents the "SignaturePolicyCommitmentType" entry of the certificate seed value dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 449.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=457)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 545.](https://www.iso.org/standard/63534.html)

The commitment type array contains OID strings identifying the specific commitment types - such as proof of origin or proof of receipt - declared in the signature.
