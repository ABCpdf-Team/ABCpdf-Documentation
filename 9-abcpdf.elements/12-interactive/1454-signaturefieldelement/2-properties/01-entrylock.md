# EntryLock Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SignatureFieldLockElement`](../../1455-signaturefieldlockelement/index.md) | null | No | Represents the "Lock" entry of the signature field object. |

## Notes

Represents the "Lock" entry of the signature field object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a [SignatureFieldLockElement](../../1455-signaturefieldlockelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 232, page 446.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=454)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 235, page 540.](https://www.iso.org/standard/63534.html)

The lock dictionary is evaluated at signing time to determine which fields the signature should lock, used in multi-party signing scenarios where each signer locks the fields they are responsible for.
