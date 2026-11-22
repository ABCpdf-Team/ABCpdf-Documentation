# EntryResources Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ResourceElement`](../../1091-resourceelement/index.md) | null | No | Represents the "Resources" entry of the page object object. |

## Notes

Represents the "Resources" entry of the page object object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [ResourceElement](../../1091-resourceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 77.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=85)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 103.](https://www.iso.org/standard/63534.html)

The Resources entry on a page object defines all objects available to the page's content streams. If absent, the page inherits its resources from the nearest ancestor page tree node that supplies a Resources entry.
