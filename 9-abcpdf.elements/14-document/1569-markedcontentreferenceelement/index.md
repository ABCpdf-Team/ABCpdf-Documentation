# MarkedContentReferenceElement Class

This class represents the marked-content reference dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 324, page 561.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=569)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 357, page 727.](https://www.iso.org/standard/63534.html)

A marked content reference links a structure element to a region of marked content in a content stream. It identifies the specific marked content sequence on a specific page or stream that constitutes part of the structure element content.

The Pg entry references the page containing the marked content. When absent, the page is inherited from the nearest ancestor structure element that specifies one.

The Stm entry references the content stream when the marked content is in a stream other than the page content stream, such as a form XObject.

The MCID entry gives the marked content identifier integer matching the MCID property in the corresponding content stream operator. This integer links the reference to the exact region of content.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MarkedContentReferenceElement`

## Methods

| Method | Description |
| --- | --- |
| [MarkedContentReferenceElement](1-methods/01-markedcontentreferenceelement.md) | Create a new MarkedContentReferenceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the marked-content reference dictionary object. |
| [EntryPg](2-properties/02-entrypg.md) | Represents the "Pg" entry of the marked-content reference dictionary object. |
| [EntryStm](2-properties/03-entrystm.md) | Represents the "Stm" entry of the marked-content reference dictionary object. |
| [EntryStmOwn](2-properties/04-entrystmown.md) | Represents the "StmOwn" entry of the marked-content reference dictionary object. |
| [EntryMCID](2-properties/05-entrymcid.md) | Represents the "MCID" entry of the marked-content reference dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
