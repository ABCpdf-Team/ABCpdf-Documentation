# DeveloperExtensionsElement Class

This class represents the developer extensions dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 50, page 108.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=116)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 49, page 140.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25b, page 25.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=25)

The developer extensions dictionary describes a single extension to the PDF specification defined by a third party. It is stored as a named entry in the Extensions dictionary in the document catalog.

The BaseVersion entry names the PDF version on which the extension is based, as a name object such as 1.7 or 2.0. The ExtensionLevel entry is an integer identifying the specific revision of the extension.

A conforming reader that does not understand a developer extension should still be able to process the document to the extent that the base PDF version allows. Extensions must not require a reader to understand them in order to process the document correctly.

The URL entry provides a URI where documentation for the extension can be found. This helps readers and developers identify and understand the extension.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DeveloperExtensionsElement`

## Methods

| Method | Description |
| --- | --- |
| [DeveloperExtensionsElement](1-methods/01-developerextensionselement.md) | Create a new DeveloperExtensionsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the developer extensions dictionary object. |
| [EntryBaseVersion](2-properties/02-entrybaseversion.md) | Represents the "BaseVersion" entry of the developer extensions dictionary object. |
| [EntryExtensionLevel](2-properties/03-entryextensionlevel.md) | Represents the "ExtensionLevel" entry of the developer extensions dictionary object. |
| [EntryURL](2-properties/04-entryurl.md) | Represents the "URL" entry of the developer extensions dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
