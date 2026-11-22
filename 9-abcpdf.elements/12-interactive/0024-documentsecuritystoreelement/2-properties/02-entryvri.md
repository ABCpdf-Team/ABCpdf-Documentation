# EntryVRI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement<SignatureValidationRelatedInformationElement>`](../../../01-base/1086-element/index.md) | null | No | Represents the "VRI" entry of the document security store dictionary object. |

## Notes

Represents the "VRI" entry of the document security store dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [DictElement](../../../01-base/0003-dictelement_t_/index.md) of [SignatureValidationRelatedInformationElement](../../0027-signaturevalidationrelatedinformationelement/index.md) objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 583.](https://www.iso.org/standard/63534.html)

The VRI entry is a dictionary whose keys are the uppercase hexadecimal SHA-1 hashes of individual signature byte ranges. Each value is the signature validation-related information dictionary for that signature, grouping the certificate, OCSP, and CRL data specific to it.
