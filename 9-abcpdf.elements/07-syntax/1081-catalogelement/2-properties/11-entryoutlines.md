# EntryOutlines Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OutlineElement`](../../../12-interactive/1376-outlineelement/index.md) | null | No | Represents the "Outlines" entry of the catalog dictionary object. |

## Notes

Represents the "Outlines" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [OutlineElement](../../../12-interactive/1376-outlineelement/index.md).

The document outline is the bookmark hierarchy visible in the Acrobat navigation panel.

This property holds the root of the document outline.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 74.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=82)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 99.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The Outlines entry references the root of the document outline (bookmarks) hierarchy. The outline tree provides a hierarchical navigation structure that viewers typically display in a side panel.
