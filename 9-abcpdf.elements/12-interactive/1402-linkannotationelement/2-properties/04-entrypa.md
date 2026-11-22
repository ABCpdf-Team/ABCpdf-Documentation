# EntryPA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`UriActionElement`](../../1432-uriactionelement/index.md) | null | No | Represents the "PA" entry of the link annotation object. |

## Notes

Represents the "PA" entry of the link annotation object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an [UriActionElement](../../1432-uriactionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 173, page 395.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=403)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 176, page 479.](https://www.iso.org/standard/63534.html)

The URI action in PA allows a web-integrated viewer to resolve the link to a web address rather than executing the embedded A action.
