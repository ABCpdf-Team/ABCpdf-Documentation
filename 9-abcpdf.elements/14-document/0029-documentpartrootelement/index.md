# DocumentPartRootElement Class

This class represents the dpartroot dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 408, page 829.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because DpartElement.EntryParent requires it to be so.

The document part root element is the top-level node of the document part hierarchy, referenced from the document catalog. It serves as the entry point for traversing the logical part structure.

The RecordLevel entry identifies which level of the hierarchy corresponds to individual records in a variable data printing job. Processors use this to iterate over records within the document.

The NodeNameList entry lists the names assigned to each level of the hierarchy, allowing processors to understand the semantics of each level without inspecting every node.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DocumentPartRootElement`

## Methods

| Method | Description |
| --- | --- |
| [DocumentPartRootElement](1-methods/01-documentpartrootelement.md) | Create a new DocumentPartRootElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the dpartroot dictionary object. |
| [EntryDPartRootNode](2-properties/02-entrydpartrootnode.md) | Represents the "DPartRootNode" entry of the dpartroot dictionary object. |
| [EntryRecordLevel](2-properties/03-entryrecordlevel.md) | Represents the "RecordLevel" entry of the dpartroot dictionary object. |
| [EntryNodeNameList](2-properties/04-entrynodenamelist.md) | Represents the "NodeNameList" entry of the dpartroot dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
