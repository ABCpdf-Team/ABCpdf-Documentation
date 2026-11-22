# FolderElement Class

This class represents the folder dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 159, page 450.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6c, page 32.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=32)

This class is always an indirect object because CollectionElement.EntryFolders, FolderElement.EntryChild, FolderElement.EntryNext and FolderElement.EntryParent require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FolderElement`

A folder dictionary represents a virtual folder in a PDF portfolio's folder hierarchy. Folders are chained through Child and Next references into a tree; Parent points back to the enclosing folder.

The ID entry is a unique integer identifier. The Name, CI, Desc, CreationDate, and ModDate entries carry metadata. The Thumb entry references a thumbnail image for the folder.

## Methods

| Method | Description |
| --- | --- |
| [FolderElement](1-methods/01-folderelement.md) | Create a new FolderElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the folder dictionary object. |
| [EntryID](2-properties/02-entryid.md) | Represents the "ID" entry of the folder dictionary object. |
| [EntryName](2-properties/03-entryname.md) | Represents the "Name" entry of the folder dictionary object. |
| [EntryParent](2-properties/04-entryparent.md) | Represents the "Parent" entry of the folder dictionary object. |
| [EntryChild](2-properties/05-entrychild.md) | Represents the "Child" entry of the folder dictionary object. |
| [EntryNext](2-properties/06-entrynext.md) | Represents the "Next" entry of the folder dictionary object. |
| [EntryCI](2-properties/07-entryci.md) | Represents the "CI" entry of the folder dictionary object. |
| [EntryDesc](2-properties/08-entrydesc.md) | Represents the "Desc" entry of the folder dictionary object. |
| [EntryCreationDate](2-properties/09-entrycreationdate.md) | Represents the "CreationDate" entry of the folder dictionary object. |
| [EntryModDate](2-properties/10-entrymoddate.md) | Represents the "ModDate" entry of the folder dictionary object. |
| [EntryThumb](2-properties/11-entrythumb.md) | Represents the "Thumb" entry of the folder dictionary object. |
| [EntryFree](2-properties/12-entryfree.md) | Represents the "Free" entry of the folder dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
