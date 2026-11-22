# EntryRoot Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CatalogElement`](../../1081-catalogelement/index.md) | null | No | Represents the "Root" entry of the cross-reference stream dictionary object. |

## Notes

Represents the "Root" entry of the cross-reference stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [CatalogElement](../../1081-catalogelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=58)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 65.](https://www.iso.org/standard/63534.html)

The Root entry in the cross-reference stream serves the same purpose as Root in the traditional trailer: it references the document catalog. Cross-reference streams subsume the trailer dictionary, so all trailer entries appear directly in the stream dictionary.
