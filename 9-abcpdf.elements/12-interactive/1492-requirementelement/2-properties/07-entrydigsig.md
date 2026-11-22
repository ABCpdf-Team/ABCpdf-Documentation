# EntryDigSig Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SignatureElement`](../../1475-signatureelement/index.md) | null | No | Represents the "DigSig" entry of the requirement dictionary object. |

## Notes

Represents the "DigSig" entry of the requirement dictionary object.

It is defined as part of the PDF 2.0 specification.

It contains a [SignatureElement](../../1475-signatureelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 264, page 484.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=492)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 274, page 603.](https://www.iso.org/standard/63534.html)

When present this entry extends the requirement to include a specific digital signature capability, defined as a dictionary specifying the required signing algorithm and key usage.
