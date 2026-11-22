# NameDictionaryElement Class

This class represents the name dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 31, page 80.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=88)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 32, page 108.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.28, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

The name dictionary is referenced from the document catalog and provides access to named trees that map string keys to various types of PDF objects. It centralises all named resources in the document.

The Dests entry maps destination names to destination arrays or dictionaries. Named destinations allow links, bookmarks, and actions to reference page locations by name rather than by object reference.

The EmbeddedFiles entry maps file names to file specification dictionaries for embedded file attachments. This tree is the primary mechanism for attaching files to a PDF document in PDF 1.2 and later.

The JavaScript entry maps script names to JavaScript action dictionaries. Document-level scripts listed here run when the document is opened or when triggered by other events.

The Pages entry maps page names to page object references, supporting named page targets in links and actions. The Templates, IDS, URLS, AlternatePresentations, and Renditions entries support specialised workflows including web capture, multimedia, and presentations.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.NameDictionaryElement`

## Methods

| Method | Description |
| --- | --- |
| [NameDictionaryElement](1-methods/01-namedictionaryelement.md) | Create a new NameDictionaryElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDests](2-properties/01-entrydests.md) | Represents the "Dests" entry of the name dictionary object. |
| [EntryAP](2-properties/02-entryap.md) | Represents the "AP" entry of the name dictionary object. |
| [EntryJavaScript](2-properties/03-entryjavascript.md) | Represents the "JavaScript" entry of the name dictionary object. |
| [EntryPages](2-properties/04-entrypages.md) | Represents the "Pages" entry of the name dictionary object. |
| [EntryTemplates](2-properties/05-entrytemplates.md) | Represents the "Templates" entry of the name dictionary object. |
| [EntryIDS](2-properties/06-entryids.md) | Represents the "IDS" entry of the name dictionary object. |
| [EntryURLS](2-properties/07-entryurls.md) | Represents the "URLS" entry of the name dictionary object. |
| [EntryEmbeddedFiles](2-properties/08-entryembeddedfiles.md) | Represents the "EmbeddedFiles" entry of the name dictionary object. |
| [EntryAlternatePresentations](2-properties/09-entryalternatepresentations.md) | Represents the "AlternatePresentations" entry of the name dictionary object. |
| [EntryRenditions](2-properties/10-entryrenditions.md) | Represents the "Renditions" entry of the name dictionary object. |
| [EntryXFAResources](2-properties/11-entryxfaresources.md) | Represents the "XFAResources" entry of the name dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
