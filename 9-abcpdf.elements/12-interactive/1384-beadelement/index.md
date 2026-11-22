# BeadElement Class

This class represents the bead dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 161, page 376.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=384)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 163, page 457.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because BeadElement.EntryN, BeadElement.EntryV, PageObjectElement.EntryB, ThreadActionElement.EntryB and ThreadElement.EntryF require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.BeadElement`

A bead dictionary describes one rectangular region on a page forming part of an article thread. Reading the thread in order means following the chain of beads from first to last, each corresponding to a visible passage of content on its host page.

Each bead is an indirect object because it is multiply referenced: by the thread, by its neighbouring beads, and by the page that contains it. The page's B array lists all beads on that page.

The R entry gives the bounding rectangle of the bead in default user space on the referenced page.

## Methods

| Method | Description |
| --- | --- |
| [BeadElement](1-methods/01-beadelement.md) | Create a new BeadElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the bead dictionary object. |
| [EntryT](2-properties/02-entryt.md) | Represents the "T" entry of the bead dictionary object. |
| [EntryN](2-properties/03-entryn.md) | Represents the "N" entry of the bead dictionary object. |
| [EntryV](2-properties/04-entryv.md) | Represents the "V" entry of the bead dictionary object. |
| [EntryP](2-properties/05-entryp.md) | Represents the "P" entry of the bead dictionary object. |
| [EntryR](2-properties/06-entryr.md) | Represents the "R" entry of the bead dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
