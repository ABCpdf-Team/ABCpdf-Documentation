# CollectionSortElement Class

This class represents the collection sort dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 158, page 373.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=381)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 156, page 449.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CollectionSortElement`

A collection sort dictionary specifies the default sort order for files displayed in a portfolio. The S entry names the schema field to sort by, and A selects ascending or descending order.

Both S and A may be arrays of equal length to specify a multi-level sort: the viewer applies the first sort key first, then uses subsequent keys to break ties.

## Methods

| Method | Description |
| --- | --- |
| [CollectionSortElement](1-methods/01-collectionsortelement.md) | Create a new CollectionSortElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the collection sort dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the collection sort dictionary object. |
| [EntryA](2-properties/03-entrya.md) | Represents the "A" entry of the collection sort dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
