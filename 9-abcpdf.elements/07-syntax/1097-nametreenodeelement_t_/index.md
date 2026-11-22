# NameTreeNodeElement\<T> Class

This class represents a name tree node.

A name tree is a way of representing a mapping from strings to other Elements.

The standard PDF dictionary object does something similar, but it works natively in terms of shorter, non-Unicode strings and the PDF specification implies that it might not have been well optimized for large numbers of items.

As such the PDF specification uses this type of tree structure, in areas where there may be large numbers of keys and values.

This class is always an indirect object because CollectionElement.EntryResources, EntryKids, NavigatorElement.EntryResources and NavigatorElement.EntryStrings require it to be so.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 36, page 89.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=97)

Name tree nodes form the structure of a name tree, which maps string keys in lexicographic order to PDF values. Name trees are used throughout PDF for named destinations, embedded files, and other named resources.

An intermediate node holds a Kids array of indirect references to child nodes and a Limits array containing the lexicographically smallest and largest keys in its subtree. Readers use the Limits arrays to navigate to the correct subtree for a given key without visiting every node.

A leaf node holds a Names array of alternating key-value pairs. The keys are string objects in ascending lexicographic order, and the values are the corresponding PDF objects for each key.

The root node may be either an intermediate node or a leaf node. A root that holds Names directly is a leaf root covering all entries in a single node.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.TreeNodeElement`](../0019-treenodeelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.NameTreeNodeElement<T>`

## Methods

| Method | Description |
| --- | --- |
| [NameTreeNodeElement\<T>](1-methods/01-nametreenodeelement_t_.md) | Create a new NameTreeNodeElement. |
|  | [inherited methods...](../0019-treenodeelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryKids](2-properties/01-entrykids.md) | This property represents the "Kids" entry of the name tree node dictionary object. |
| [EntryNames](2-properties/02-entrynames.md) | This property represents the "Names" entry of the name tree node dictionary object. |
| [EntryLimits](2-properties/03-entrylimits.md) | This property represents the "Limits" entry of the name tree node dictionary object. |
|  | [inherited properties...](../0019-treenodeelement/index.md) |
