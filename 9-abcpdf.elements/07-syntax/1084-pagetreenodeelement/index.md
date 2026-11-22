# PageTreeNodeElement Class

This class represents the page tree node. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=84)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because CatalogElement.EntryPages, PageObjectElement.EntryParent, PageTreeNodeElement.EntryKids and PageTreeNodeElement.EntryParent require it to be so.

Page tree nodes form the internal nodes of the page tree that organises a document's pages. Each node holds an array of references to its children, which may be other page tree nodes or page objects.

The Count entry gives the total number of page objects in the subtree rooted at this node. A reader uses these counts to navigate directly to a page by index without visiting every node in the tree.

The Parent entry references the node's parent in the tree. Every node except the root has a parent. The root node is referenced from the document catalog's Pages entry and has no parent entry.

The Resources, MediaBox, CropBox, and Rotate entries may appear in a page tree node as inheritable attributes. Page objects that do not specify these entries inherit them from the nearest ancestor node that does.

The Kids array contains the immediate children of this node. The order of entries in Kids defines the page order of the document. A well-formed tree has no cycles and every page object appears exactly once.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PageTreeNodeElement`

## Methods

| Method | Description |
| --- | --- |
| [PageTreeNodeElement](1-methods/01-pagetreenodeelement.md) | Create a new PageTreeNodeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the page tree node object. |
| [EntryParent](2-properties/02-entryparent.md) | Represents the "Parent" entry of the page tree node object. |
| [EntryKids](2-properties/03-entrykids.md) | Represents the "Kids" entry of the page tree node object. |
| [EntryCount](2-properties/04-entrycount.md) | Represents the "Count" entry of the page tree node object. |
| [EntryResources](2-properties/05-entryresources.md) | Represents the "Resources" entry of the page tree node object. |
| [EntryMediaBox](2-properties/06-entrymediabox.md) | Represents the "MediaBox" entry of the page tree node object. |
| [EntryCropBox](2-properties/07-entrycropbox.md) | Represents the "CropBox" entry of the page tree node object. |
| [EntryRotate](2-properties/08-entryrotate.md) | Represents the "Rotate" entry of the page tree node object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
