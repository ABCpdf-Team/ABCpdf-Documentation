# PageLabelElement Class

This class represents the page label dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 159, page 375.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=383)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 161, page 456.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PageLabelElement`

A page label dictionary defines the numbering style and optional prefix for a range of pages. The PDF page label number tree maps page indices to these dictionaries so different ranges can use different numbering conventions in the same file.

The S entry selects the numbering style: decimal Arabic numerals, upper or lower Roman numerals, or upper or lower alphabetic. Omitting S causes pages in the range to be labelled with the prefix alone.

The P entry supplies a string prefix that appears before the numeric portion. The St entry sets the numeric value of the first page in the range, allowing a range to start at a number other than one.

## Methods

| Method | Description |
| --- | --- |
| [PageLabelElement](1-methods/01-pagelabelelement.md) | Create a new PageLabelElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the page label dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the page label dictionary object. |
| [EntryP](2-properties/03-entryp.md) | Represents the "P" entry of the page label dictionary object. |
| [EntrySt](2-properties/04-entryst.md) | Represents the "St" entry of the page label dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
