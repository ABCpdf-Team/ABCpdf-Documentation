# EntryPageLabels Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NumberTreeNodeElement`](../../1099-numbertreenodeelement_t_/index.md)`<`[`PageLabelElement`](../../../12-interactive/1383-pagelabelelement/index.md)`>` | null | No | Represents the "PageLabels" entry of the catalog dictionary object. |

## Notes

Represents the "PageLabels" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a [NumberTreeNodeElement](../../1099-numbertreenodeelement_t_/index.md) containing [PageLabelElements](../../../12-interactive/1383-pagelabelelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 73.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=81)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 98.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The PageLabels entry references a number tree mapping page indices to page label dictionaries. Page labels define the numbering style (Arabic, Roman, alphabetic) and prefix string used for the visible page number at each position in the document.
