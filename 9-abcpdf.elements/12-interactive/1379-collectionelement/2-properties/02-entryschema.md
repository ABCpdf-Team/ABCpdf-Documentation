# EntrySchema Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CollectionSchemaElement`](../../1379-collectionschemaelement/index.md) | null | No | Represents the "Schema" entry of the collection dictionary object. |

## Notes

Represents the "Schema" entry of the collection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [CollectionSchemaElement](../../1379-collectionschemaelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=29)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 446.](https://www.iso.org/standard/63534.html)

The schema dictionary's named entries are collection field dictionaries, each defining one column. The key for each entry in the schema is also the key used in embedded file collection item dictionaries to store the corresponding value.
