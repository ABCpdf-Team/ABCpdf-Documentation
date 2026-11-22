# EntryPages Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PageTreeNodeElement`](../../1084-pagetreenodeelement/index.md) | null | No | Represents the "Pages" entry of the catalog dictionary object. |

## Notes

Represents the "Pages" entry of the catalog dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [PageTreeNodeElement](../../1084-pagetreenodeelement/index.md).

The [PageTreeNodeElement](../../1084-pagetreenodeelement/index.md) represents the root node for all the pages in the document.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 73.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=81)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 98.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The Pages entry references the root node of the page tree. Every page in the document is a descendant of this root. A reader traverses the tree using the Count entries at each node to locate a specific page by index.
