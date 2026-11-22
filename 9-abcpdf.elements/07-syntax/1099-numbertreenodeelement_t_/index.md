# NumberTreeNodeElement\<T> Class

This class represents a number tree node.

A number tree is a way of representing a mapping from integers to other Elements.

The standard PDF dictionary object does something similar, but it works natively in terms of strings rather than numbers and the PDF specification implies that it might not have been optimized for large numbers of items.

As such the PDF specification uses this type of tree structure, in areas where there may be large numbers of keys and values.

This class is always an indirect object because EntryKids requires it to be so.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 37, page 91.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=99)

Number tree nodes form the structure of a number tree, which maps integer keys in ascending numeric order to PDF values. Number trees are used for structure parent trees, page label ranges, and other integer-keyed mappings.

An intermediate node holds a Kids array and a Limits array containing the smallest and largest integer keys in its subtree, allowing direct navigation to the subtree covering a target key.

A leaf node holds a Nums array of alternating key-value pairs. Keys are integers in ascending order; values are the corresponding PDF objects.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.TreeNodeElement`](../0019-treenodeelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.NumberTreeNodeElement<T>`

## Methods

| Method | Description |
| --- | --- |
| [NumberTreeNodeElement\<T>](1-methods/01-numbertreenodeelement_t_.md) | Create a new NumberTreeNodeElement. |
|  | [inherited methods...](../0019-treenodeelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryKids](2-properties/01-entrykids.md) | This property represents the "Kids" entry of the number tree node dictionary object. |
| [EntryNums](2-properties/02-entrynums.md) | This property represents the "Nums" entry of the number tree node dictionary object. |
| [EntryLimits](2-properties/03-entrylimits.md) | This property represents the "Limits" entry of the number tree node dictionary object. |
|  | [inherited properties...](../0019-treenodeelement/index.md) |
