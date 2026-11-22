# CatalogElement Class

This class represents the catalog dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 73.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=81)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 97.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because CrossReferenceStreamElement.EntryRoot and FileTrailerElement.EntryRoot require it to be so.

The document catalog is the root object of a PDF document's logical structure. Every object in the document is reachable from the catalog, either directly through its entries or indirectly through the objects they reference.

The Pages entry references the root of the page tree, which organises all pages in the document into a balanced tree of page tree nodes. A reader traverses this tree to locate individual pages.

The Names entry references the name dictionary, which holds named trees mapping string keys to various object types. Named destinations, embedded files, JavaScript actions, and other named resources are stored here.

The Dests entry provides a direct dictionary of named destinations for compatibility with PDF 1.0 and 1.1 documents. PDF 1.2 and later use the Names dictionary for named destinations instead.

The ViewerPreferences entry references a dictionary that controls how a conforming viewer presents the document: initial page layout, full-screen mode, toolbar visibility, and similar display settings.

The PageLayout and PageMode entries control the initial layout and display mode when the document is opened. These are advisory; a viewer may ignore them or allow the user to override them.

The OpenAction entry specifies an action or destination to execute when the document is opened. This is commonly used to navigate to a specific page or to run a JavaScript action.

The AcroForm entry references the document's interactive form dictionary, which lists all form fields and their shared properties. The OCProperties entry references the optional content properties dictionary.

The Perms entry holds cryptographic permissions that can restrict document-level operations independently of the encryption dictionary. The DSS entry references the document security store used in PDF digital signatures.

The AF entry holds associated files attached to the document as a whole, used in PDF/A-3 and PDF 2.0 workflows. The Extensions entry lists developer extensions that the document relies on beyond the base PDF specification.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CatalogElement`

## Methods

| Method | Description |
| --- | --- |
| [CatalogElement](1-methods/01-catalogelement.md) | Create a new CatalogElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the catalog dictionary object. |
| [EntryVersion](2-properties/02-entryversion.md) | Represents the "Version" entry of the catalog dictionary object. |
| [EntryExtensions](2-properties/03-entryextensions.md) | Represents the "Extensions" entry of the catalog dictionary object. |
| [EntryPages](2-properties/04-entrypages.md) | Represents the "Pages" entry of the catalog dictionary object. |
| [EntryPageLabels](2-properties/05-entrypagelabels.md) | Represents the "PageLabels" entry of the catalog dictionary object. |
| [EntryNames](2-properties/06-entrynames.md) | Represents the "Names" entry of the catalog dictionary object. |
| [EntryDests](2-properties/07-entrydests.md) | Represents the "Dests" entry of the catalog dictionary object. |
| [EntryViewerPreferences](2-properties/08-entryviewerpreferences.md) | Represents the "ViewerPreferences" entry of the catalog dictionary object. |
| [EntryPageLayout](2-properties/09-entrypagelayout.md) | Represents the "PageLayout" entry of the catalog dictionary object. |
| [EntryPageMode](2-properties/10-entrypagemode.md) | Represents the "PageMode" entry of the catalog dictionary object. |
| [EntryOutlines](2-properties/11-entryoutlines.md) | Represents the "Outlines" entry of the catalog dictionary object. |
| [EntryThreads](2-properties/12-entrythreads.md) | Represents the "Threads" entry of the catalog dictionary object. |
| [EntryOpenAction](2-properties/13-entryopenaction.md) | Represents the "OpenAction" entry of the catalog dictionary object. |
| [EntryAA](2-properties/14-entryaa.md) | Represents the "AA" entry of the catalog dictionary object. |
| [EntryURI](2-properties/15-entryuri.md) | Represents the "URI" entry of the catalog dictionary object. |
| [EntryAcroForm](2-properties/16-entryacroform.md) | Represents the "AcroForm" entry of the catalog dictionary object. |
| [EntryStructTreeRoot](2-properties/17-entrystructtreeroot.md) | Represents the "StructTreeRoot" entry of the catalog dictionary object. |
| [EntryMarkInfo](2-properties/18-entrymarkinfo.md) | Represents the "MarkInfo" entry of the catalog dictionary object. |
| [EntryLang](2-properties/19-entrylang.md) | Represents the "Lang" entry of the catalog dictionary object. |
| [EntrySpiderInfo](2-properties/20-entryspiderinfo.md) | Represents the "SpiderInfo" entry of the catalog dictionary object. |
| [EntryOutputIntents](2-properties/21-entryoutputintents.md) | Represents the "OutputIntents" entry of the catalog dictionary object. |
| [EntryPieceInfo](2-properties/22-entrypieceinfo.md) | Represents the "PieceInfo" entry of the catalog dictionary object. |
| [EntryOCProperties](2-properties/23-entryocproperties.md) | Represents the "OCProperties" entry of the catalog dictionary object. |
| [EntryPerms](2-properties/24-entryperms.md) | Represents the "Perms" entry of the catalog dictionary object. |
| [EntryLegal](2-properties/25-entrylegal.md) | Represents the "Legal" entry of the catalog dictionary object. |
| [EntryRequirements](2-properties/26-entryrequirements.md) | Represents the "Requirements" entry of the catalog dictionary object. |
| [EntryCollection](2-properties/27-entrycollection.md) | Represents the "Collection" entry of the catalog dictionary object. |
| [EntryNeedsRendering](2-properties/28-entryneedsrendering.md) | Represents the "NeedsRendering" entry of the catalog dictionary object. |
| [EntryDSS](2-properties/29-entrydss.md) | Represents the "DSS" entry of the catalog dictionary object. |
| [EntryAF](2-properties/30-entryaf.md) | Represents the "AF" entry of the catalog dictionary object. |
| [EntryDPartRoot](2-properties/31-entrydpartroot.md) | Represents the "DPartRoot" entry of the catalog dictionary object. |
| [EntryFDF](2-properties/32-entryfdf.md) | Represents the "FDF" entry of the catalog dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
