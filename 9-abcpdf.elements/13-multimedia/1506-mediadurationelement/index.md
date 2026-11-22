# MediaDurationElement Class

This class represents the media duration dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 281, page 498.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=506)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 292, page 623.](https://www.iso.org/standard/63534.html)

A media duration dictionary specifies the duration of media playback. The S entry names the duration subtype: I for intrinsic duration (use the clip natural length) or T for a specific time duration given by the T entry.

The T entry holds a timespan dictionary that specifies the duration value when S is T. Together, S and T allow authors to set a fixed playback duration that may be shorter or longer than the clip intrinsic length.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaDurationElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaDurationElement](1-methods/01-mediadurationelement.md) | Create a new MediaDurationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media duration dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the media duration dictionary object. |
| [EntryT](2-properties/03-entryt.md) | Represents the "T" entry of the media duration dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
