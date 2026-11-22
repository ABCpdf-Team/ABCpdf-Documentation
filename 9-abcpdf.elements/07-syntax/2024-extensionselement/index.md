# ExtensionsElement Class

This class represents the extensions dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 48, page 140.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25a, page 24.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=24)

The Extensions dictionary in the document catalog lists all developer extensions the document uses. Each entry maps a developer prefix name to a developer extensions dictionary describing one extension.

The ADBE entry is reserved for Adobe extensions to the PDF specification. These extensions were commonly used in PDF 1.7 documents to introduce features that were later standardised in PDF 2.0.

A document that uses developer extensions must include the Extensions dictionary so that conforming readers can identify which extensions are required and whether they can process the document fully.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ExtensionsElement`

## Methods

| Method | Description |
| --- | --- |
| [ExtensionsElement](1-methods/01-extensionselement.md) | Create a new ExtensionsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the extensions dictionary object. |
| [EntryADBE](2-properties/02-entryadbe.md) | Represents the "ADBE" entry of the extensions dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
