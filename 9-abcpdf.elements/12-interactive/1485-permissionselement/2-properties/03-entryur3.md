# EntryUR3 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SignatureElement`](../../1475-signatureelement/index.md) | null | No | Represents the "UR3" entry of the permissions dictionary object. |

## Notes

Represents the "UR3" entry of the permissions dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification. It was deprecated in PDF 2.0.

It contains a [SignatureElement](../../1475-signatureelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 258, page 477.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=485)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 263, page 589.](https://www.iso.org/standard/63534.html)

The UR3 entry references a usage rights signature created with the current UR transform. It grants a reader application the ability to perform specific operations beyond those enabled by the document's standard permissions.
