# OutlineElement Class

This class represents the outline dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 152, page 368.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=376)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 150, page 442.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because CatalogElement.EntryOutlines and OutlineItemElement.EntryParent require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OutlineElement`

An outline dictionary is the root of the document outline tree. The tree presents a hierarchy of titled items that each navigate to a location within the document when activated.

The outline root itself is not visible in the viewer; only the items it references are shown. The First and Last entries point to the first and last top-level items, and Count records the total number of open items at all levels.

The outline root must be an indirect object because the document catalog references it by indirect reference and multiple outline items point back to it as their parent.

## Methods

| Method | Description |
| --- | --- |
| [OutlineElement](1-methods/01-outlineelement.md) | Create a new OutlineElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the outline dictionary object. |
| [EntryFirst](2-properties/02-entryfirst.md) | Represents the "First" entry of the outline dictionary object. |
| [EntryLast](2-properties/03-entrylast.md) | Represents the "Last" entry of the outline dictionary object. |
| [EntryCount](2-properties/04-entrycount.md) | Represents the "Count" entry of the outline dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
