# OutlineItemElement Class

This class represents the outline item dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 153, page 368.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=376)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 151, page 442.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because OutlineElement.EntryFirst, OutlineElement.EntryLast, OutlineItemElement.EntryFirst, OutlineItemElement.EntryLast, OutlineItemElement.EntryNext, OutlineItemElement.EntryParent and OutlineItemElement.EntryPrev require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OutlineItemElement`

An outline item dictionary describes a single entry in the document outline tree. Each item has a title, links to its siblings and to its own children, and either a destination or an action triggered when the item is activated.

The item is always an indirect object because it is referenced by the outline root, by sibling items, and by its own children, each of which must hold indirect references to avoid circular direct-object embedding.

The Count entry carries sign information: positive means the item is open (children visible), negative means it is closed. The absolute value gives the total number of open descendant items.

The colour and style flag entries allow individual items to be drawn in a specific colour and in bold or italic, giving limited typographic control over outline appearance.

## Methods

| Method | Description |
| --- | --- |
| [OutlineItemElement](1-methods/01-outlineitemelement.md) | Create a new OutlineItemElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTitle](2-properties/01-entrytitle.md) | Represents the "Title" entry of the outline item dictionary object. |
| [EntryParent](2-properties/02-entryparent.md) | Represents the "Parent" entry of the outline item dictionary object. |
| [EntryPrev](2-properties/03-entryprev.md) | Represents the "Prev" entry of the outline item dictionary object. |
| [EntryNext](2-properties/04-entrynext.md) | Represents the "Next" entry of the outline item dictionary object. |
| [EntryFirst](2-properties/05-entryfirst.md) | Represents the "First" entry of the outline item dictionary object. |
| [EntryLast](2-properties/06-entrylast.md) | Represents the "Last" entry of the outline item dictionary object. |
| [EntryCount](2-properties/07-entrycount.md) | Represents the "Count" entry of the outline item dictionary object. |
| [EntryDest](2-properties/08-entrydest.md) | Represents the "Dest" entry of the outline item dictionary object. |
| [EntryA](2-properties/09-entrya.md) | Represents the "A" entry of the outline item dictionary object. |
| [EntrySE](2-properties/10-entryse.md) | Represents the "SE" entry of the outline item dictionary object. |
| [EntryC](2-properties/11-entryc.md) | Represents the "C" entry of the outline item dictionary object. |
| [EntryF](2-properties/12-entryf.md) | Represents the "F" entry of the outline item dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
