# DocumentPartElement Class

This class represents the dpart dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 409, page 829.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because DocumentPartGoToActionElement.EntryDp, DpartElement.EntryDParts, DpartElement.EntryParent, DpartrootElement.EntryDPartRootNode and PageObjectElement.EntryDPart require it to be so.

A document part element represents one node in the document part hierarchy introduced in PDF 2.0. The hierarchy divides a PDF document into a tree of logical parts, each corresponding to a record, chapter, or other meaningful subdivision.

Document parts are used in variable data printing and multi-record PDF workflows where a single file contains many instances of a repeated structure. The hierarchy allows individual records to be navigated or extracted without parsing the entire document.

Each node may carry document part metadata in a DPM dictionary describing the properties of the part, such as data fields specific to the record it represents.

Associated files may be attached at the document part level, allowing each part to carry its own supplementary data independently of document-level or page-level associated files.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DocumentPartElement`

## Methods

| Method | Description |
| --- | --- |
| [DocumentPartElement](1-methods/01-documentpartelement.md) | Create a new DocumentPartElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the dpart dictionary object. |
| [EntryParent](2-properties/02-entryparent.md) | Represents the "Parent" entry of the dpart dictionary object. |
| [EntryDParts](2-properties/03-entrydparts.md) | Represents the "DParts" entry of the dpart dictionary object. |
| [EntryStart](2-properties/04-entrystart.md) | Represents the "Start" entry of the dpart dictionary object. |
| [EntryEnd](2-properties/05-entryend.md) | Represents the "End" entry of the dpart dictionary object. |
| [EntryDPM](2-properties/06-entrydpm.md) | Represents the "DPM" entry of the dpart dictionary object. |
| [EntryAF](2-properties/07-entryaf.md) | Represents the "AF" entry of the dpart dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
