# CollectionSubItemElement Class

This class represents the collection subitem dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 49, page 107.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=115)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 47, page 139.](https://www.iso.org/standard/63534.html)

A collection subitem dictionary holds the value of a single field in a PDF portfolio collection item. The data type of the value must match the subtype declared for that field in the collection schema.

The D entry holds the actual data value: a string for text or date fields, a number for numeric fields, or a boolean. The P entry, when false, indicates that the field data is not present for this item even though the entry exists in the dictionary.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CollectionSubItemElement`

## Methods

| Method | Description |
| --- | --- |
| [CollectionSubItemElement](1-methods/01-collectionsubitemelement.md) | Create a new CollectionSubItemElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the collection subitem dictionary object. |
| [EntryD](2-properties/02-entryd.md) | Represents the "D" entry of the collection subitem dictionary object. |
| [EntryP](2-properties/03-entryp.md) | Represents the "P" entry of the collection subitem dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
