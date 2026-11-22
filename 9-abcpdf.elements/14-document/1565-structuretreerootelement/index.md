# StructureTreeRootElement Class

This class represents the structure tree root. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 719.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because OutlineItemElement.EntrySE and StructureElementElement.EntryP require it to be so.

The structure tree root is the top-level object of a PDF document logical structure tree, referenced from the document catalog StructTreeRoot entry. All structure elements in the document are descendants of this root.

The IDTree entry references a name tree mapping element identifiers to structure element objects, allowing any element with an ID to be located directly without traversing the tree.

The ParentTree entry references a number tree mapping integer keys to structure elements. Every page with tagged content has an entry here, enabling a reader to find the structure elements whose content appears on that page.

The RoleMap entry maps non-standard structure type names to standard ones, allowing documents using custom element types to declare their intended semantics in terms of the standard type set.

The ClassMap entry maps class names to attribute objects. Structure elements reference class names in their C entry to inherit a set of attributes.

The Namespaces entry lists all namespace objects used by structure elements in the document. Every namespace referenced by a structure element NS entry must appear here.

The PronunciationLexicon entry holds an array of file specifications for pronunciation lexicon files used to support text-to-speech rendering of the document content.

The AF entry holds associated files attached to the structure tree as a whole, supporting workflows that link supplementary data to the logical structure rather than to individual pages or objects.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.StructureTreeRootElement`

## Methods

| Method | Description |
| --- | --- |
| [StructureTreeRootElement](1-methods/01-structuretreerootelement.md) | Create a new StructureTreeRootElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the structure tree root object. |
| [EntryK](2-properties/02-entryk.md) | Represents the "K" entry of the structure tree root object. |
| [EntryIDTree](2-properties/03-entryidtree.md) | Represents the "IDTree" entry of the structure tree root object. |
| [EntryParentTree](2-properties/04-entryparenttree.md) | Represents the "ParentTree" entry of the structure tree root object. |
| [EntryParentTreeNextKey](2-properties/05-entryparenttreenextkey.md) | Represents the "ParentTreeNextKey" entry of the structure tree root object. |
| [EntryRoleMap](2-properties/06-entryrolemap.md) | Represents the "RoleMap" entry of the structure tree root object. |
| [EntryClassMap](2-properties/07-entryclassmap.md) | Represents the "ClassMap" entry of the structure tree root object. |
| [EntryNamespaces](2-properties/08-entrynamespaces.md) | Represents the "Namespaces" entry of the structure tree root object. |
| [EntryPronunciationLexicon](2-properties/09-entrypronunciationlexicon.md) | Represents the "PronunciationLexicon" entry of the structure tree root object. |
| [EntryAF](2-properties/10-entryaf.md) | Represents the "AF" entry of the structure tree root object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
