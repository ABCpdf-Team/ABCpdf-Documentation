# MarkInformationElement Class

This class represents the mark information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 321, page 556.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=564)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 353, page 719.](https://www.iso.org/standard/63534.html)

The mark information dictionary records whether a PDF document contains tagged content and what kind of accessibility marking has been applied. It appears in the document catalog and describes the document overall tagging status.

The Marked entry, when true, indicates that all content is either marked with structure information or explicitly tagged as an artifact. A false value or absence of this entry means the document is not fully tagged.

The UserProperties entry, when true, indicates that one or more structure elements carry user property attribute dictionaries holding custom metadata beyond the standard attribute sets.

The Suspects entry, when true, signals that the document contains structure elements whose content associations may be inaccurate, typically from automated tagging that could not reliably determine reading order.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MarkInformationElement`

## Methods

| Method | Description |
| --- | --- |
| [MarkInformationElement](1-methods/01-markinformationelement.md) | Create a new MarkInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryMarked](2-properties/01-entrymarked.md) | Represents the "Marked" entry of the mark information dictionary object. |
| [EntryUserProperties](2-properties/02-entryuserproperties.md) | Represents the "UserProperties" entry of the mark information dictionary object. |
| [EntrySuspects](2-properties/03-entrysuspects.md) | Represents the "Suspects" entry of the mark information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
