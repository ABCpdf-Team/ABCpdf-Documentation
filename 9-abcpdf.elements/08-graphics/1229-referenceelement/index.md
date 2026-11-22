# ReferenceElement Class

This class represents the reference dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 97, page 221.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=229)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 95, page 272.](https://www.iso.org/standard/63534.html)

The reference dictionary identifies an external page that a Form XObject represents. It is used in the reference XObject mechanism, which allows a form to serve as a proxy for a page in another PDF document.

The F entry names the file specification of the external PDF file. The referenced file must be accessible at rendering time for the reference to be resolved.

The Page entry selects which page of the external file the form represents. It may be specified as an integer page index or as a string page label.

The ID entry carries the document identifier of the external file. A conforming reader may use this to verify that the correct version of the file is being accessed.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ReferenceElement`

## Methods

| Method | Description |
| --- | --- |
| [ReferenceElement](1-methods/01-referenceelement.md) | Create a new ReferenceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the reference dictionary object. |
| [EntryPage](2-properties/02-entrypage.md) | Represents the "Page" entry of the reference dictionary object. |
| [EntryID](2-properties/03-entryid.md) | Represents the "ID" entry of the reference dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
