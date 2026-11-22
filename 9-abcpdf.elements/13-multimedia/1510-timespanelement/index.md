# TimespanElement Class

This class represents the timespan dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 289, page 502.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=510)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 300, page 628.](https://www.iso.org/standard/63534.html)

A timespan dictionary specifies a time duration or offset. It is used in media duration and media offset dictionaries to express time values.

The S entry names the timespan subtype. The V entry holds the actual time value. For simple time durations, the value is a real number of seconds. The subtype determines how V is interpreted.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.TimespanElement`

## Methods

| Method | Description |
| --- | --- |
| [TimespanElement](1-methods/01-timespanelement.md) | Create a new TimespanElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the timespan dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the timespan dictionary object. |
| [EntryV](2-properties/03-entryv.md) | Represents the "V" entry of the timespan dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
