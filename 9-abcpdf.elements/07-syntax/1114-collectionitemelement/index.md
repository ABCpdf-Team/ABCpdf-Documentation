# CollectionItemElement Class

This class represents the collection item dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 48, page 106.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=114)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 46, page 138.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because FullFileSpecificationElement.EntryCI requires it to be so.

A collection item dictionary carries the field values for one file in a PDF portfolio (collection). It maps field names defined in the collection schema to the actual data values for that file.

Each entry in the dictionary maps a field name to a collection subitem dictionary that holds the field's value and optionally a flag indicating whether the field is present for this item.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CollectionItemElement`

## Methods

| Method | Description |
| --- | --- |
| [CollectionItemElement](1-methods/01-collectionitemelement.md) | Create a new CollectionItemElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the collection item dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
