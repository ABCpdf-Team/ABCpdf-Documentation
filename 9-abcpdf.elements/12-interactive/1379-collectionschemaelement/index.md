# CollectionSchemaElement Class

This class represents the collection schema dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 156, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 154, page 447.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CollectionSchemaElement`

A collection schema dictionary is a container whose named entries are collection field dictionaries. Each named entry defines one metadata column the viewer can display for portfolio files.

The only defined entry in the schema is the optional Type entry. All other named entries are schema fields themselves, making this a variable-key dictionary that does not follow the fixed-key pattern of most PDF dictionaries.

## Methods

| Method | Description |
| --- | --- |
| [CollectionSchemaElement](1-methods/01-collectionschemaelement.md) | Create a new CollectionSchemaElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the collection schema dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
