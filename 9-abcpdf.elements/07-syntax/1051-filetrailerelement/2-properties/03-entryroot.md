# EntryRoot Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CatalogElement`](../../1081-catalogelement/index.md) | null | No | Represents the "Root" entry of the file trailer dictionary object. |

## Notes

Represents the "Root" entry of the file trailer dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [CatalogElement](../../1081-catalogelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=51)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.](https://www.iso.org/standard/63534.html)

The Root entry references the document catalog object, which is the root of the document's object hierarchy. Every object in the document is reachable from the catalog.

The catalog must be an indirect reference; it may not be a direct object. A reader that cannot locate or parse the catalog cannot open the document.
