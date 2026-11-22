# ThreadElement Class

This class represents the thread dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 160, page 376.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=384)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 162, page 457.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because BeadElement.EntryT, CatalogElement.EntryThreads and ThreadActionElement.EntryD require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ThreadElement`

A thread dictionary is the root of an article thread. A thread groups a sequence of bead regions across one or more pages so that a viewer can present them as a continuous reading flow.

The F entry is the first bead in the thread's circular linked list. Following N (next) references from that bead and back to the first visits every passage in reading order.

The I entry is an optional information dictionary carrying descriptive metadata such as title, author, and subject.

## Methods

| Method | Description |
| --- | --- |
| [ThreadElement](1-methods/01-threadelement.md) | Create a new ThreadElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the thread dictionary object. |
| [EntryF](2-properties/02-entryf.md) | Represents the "F" entry of the thread dictionary object. |
| [EntryI](2-properties/03-entryi.md) | Represents the "I" entry of the thread dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
