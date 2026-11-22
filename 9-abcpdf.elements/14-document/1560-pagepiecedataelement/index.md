# PagePieceDataElement Class

This class represents the page-piece data dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 319, page 552.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=560)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 351, page 715.](https://www.iso.org/standard/63534.html)

A page piece data dictionary stores private application data associated with a page, form XObject, or the document as a whole. Each application stores its data under a key that identifies it, preventing conflicts between different applications.

The LastModified entry within each application subdictionary records when that application last modified the page. A processor can compare this with the page own modification date to determine whether the private data is still current.

Conforming readers that do not recognise an application data must preserve it unchanged during editing or round-trip processing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PagePieceDataElement`

## Methods

| Method | Description |
| --- | --- |
| [PagePieceDataElement](1-methods/01-pagepiecedataelement.md) | Create a new PagePieceDataElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryLastModified](2-properties/01-entrylastmodified.md) | Represents the "LastModified" entry of the page-piece data dictionary object. |
| [EntryPrivate](2-properties/02-entryprivate.md) | Represents the "Private" entry of the page-piece data dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
