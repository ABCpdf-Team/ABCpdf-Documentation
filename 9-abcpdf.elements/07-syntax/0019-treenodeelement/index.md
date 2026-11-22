# TreeNodeElement Class

This class represents a name or number tree node dictionary.

This class is always an indirect object because CollectionElement.EntryResources, NameTreeNodeElement\<T>.EntryKids, NumberTreeNodeElement\<T>.EntryKids, NavigatorElement.EntryResources and NavigatorElement.EntryStrings require it to be so.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 36, page 89.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=97)

Tree node elements represent nodes in PDF's name tree and number tree structures. Both tree types use a balanced tree organisation to map keys to values efficiently without loading the entire mapping into memory.

An intermediate node carries a Kids array of references to child nodes and a Limits array giving the smallest and largest key in its subtree. A leaf node carries the key-value pairs directly.

The root node of a name tree or number tree may be either an intermediate node or a leaf node, depending on the size of the mapping. A root with no Kids entry is a leaf and holds all entries directly.

Name trees use string keys in lexicographic order. Number trees use integer keys in ascending numeric order. In both cases, the Limits arrays at each level allow a reader to navigate directly to the subtree containing a given key.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.TreeNodeElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.NameTreeNodeElement<T>`](../1097-nametreenodeelement_t_/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.NumberTreeNodeElement<T>`](../1099-numbertreenodeelement_t_/index.md)

## Methods

| Method | Description |
| --- | --- |
| [TreeNodeElement](1-methods/01-treenodeelement.md) | Create a new TreeNodeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [IsRoot](2-properties/01-isroot.md) | Nodes in a tree may be root, intermediate or leaf. |
| [IsIntermediate](2-properties/02-isintermediate.md) | Nodes in a tree may be root, intermediate or leaf. |
| [IsLeaf](2-properties/03-isleaf.md) | Nodes in a tree may be root, intermediate or leaf. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
