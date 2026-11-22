# EntrySort Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CollectionSortElement`](../../1381-collectionsortelement/index.md) | null | No | Represents the "Sort" entry of the collection dictionary object. |

## Notes

Represents the "Sort" entry of the collection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [CollectionSortElement](../../1381-collectionsortelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=29)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 447.](https://www.iso.org/standard/63534.html)

The sort dictionary specifies the default column and sort direction. Both entries may be arrays to express a multi-column sort.
