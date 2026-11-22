# CollectionElement Class

This class represents the collection dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 445.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=29)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CollectionElement`

A collection dictionary turns a PDF into a portfolio by providing the metadata, layout, and sorting instructions that a viewer uses to present embedded files as a structured collection rather than a flat list of attachments.

The Schema entry defines the set of metadata fields exposed for each embedded file, and the Sort entry specifies the default sort column and direction.

The View entry controls the initial presentation mode: details list, tiles, hidden, or a custom navigator. A navigator is a SWF-based component that can replace the default viewer UI entirely.

The Folders entry is a root reference into a tree of folder dictionaries, giving the portfolio a hierarchical organisation alongside the flat file list.

The Colors and Split entries control the visual styling and panel layout of the portfolio UI, allowing a degree of branding without requiring a custom navigator.

## Methods

| Method | Description |
| --- | --- |
| [CollectionElement](1-methods/01-collectionelement.md) | Create a new CollectionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the collection dictionary object. |
| [EntrySchema](2-properties/02-entryschema.md) | Represents the "Schema" entry of the collection dictionary object. |
| [EntryD](2-properties/03-entryd.md) | Represents the "D" entry of the collection dictionary object. |
| [EntrySort](2-properties/04-entrysort.md) | Represents the "Sort" entry of the collection dictionary object. |
| [EntryView](2-properties/05-entryview.md) | Represents the "View" entry of the collection dictionary object. |
| [EntryNavigator](2-properties/06-entrynavigator.md) | Represents the "Navigator" entry of the collection dictionary object. |
| [EntryResources](2-properties/07-entryresources.md) | Represents the "Resources" entry of the collection dictionary object. |
| [EntryColors](2-properties/08-entrycolors.md) | Represents the "Colors" entry of the collection dictionary object. |
| [EntryFolders](2-properties/09-entryfolders.md) | Represents the "Folders" entry of the collection dictionary object. |
| [EntrySplit](2-properties/10-entrysplit.md) | Represents the "Split" entry of the collection dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
