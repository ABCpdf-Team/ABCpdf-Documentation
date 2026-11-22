# StructParent Class

A class representing an item which may contain marked content sequences.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.Accessibility.Structure.StructParent
```

## Methods

| Method | Description |
| :---: | --- |
| [StructParent](1-methods/01-structparent.md) | Construct a StructParent given an owner and a container. |
| [LoadContents](1-methods/02-loadcontents.md) | Load the contents. Populate the Contents property. |
| [LoadMCIDs](1-methods/03-loadmcids.md) | Load the MCIDs. Populate the Contents and the MCIDs properties. |
| [LoadText](1-methods/04-loadtext.md) | Load the Text. Populate the Contents, the Texts, and the Rects properties. |

## Properties

| Property | Description |
| :---: | --- |
| [Container](2-properties/container.md) | The IndirectObject which contains the tagged sequences. |
| [Contents](2-properties/contents.md) | An array containing the Atoms in the PDF content stream. |
| [IsParent](2-properties/isparent.md) | Whether this item is the parent of other StructParent objects. |
| [IsValid](2-properties/isvalid.md) | Whether this item is valid. |
| [MCIDs](2-properties/mcids.md) | A mapping between MCIDs in the content stream, and their start and end indices in the Contents array. |
| [Owner](2-properties/owner.md) | The IndirectObject which owns the tagged sequences. |
| [Rects](2-properties/rects.md) | A mapping between MCIDs in the content stream, and the area they occupy. |
| [StructID](2-properties/structid.md) | The StructID of the item if it is a parent. Null if not. |
| [StructParentID](2-properties/structparentid.md) | The StructParent entry for this item. |
| [StructParentsID](2-properties/structparentsid.md) | The StructParents entry for this item. |
| [Texts](2-properties/texts.md) | A mapping between MCIDs in the content stream, and the text they contain. |
