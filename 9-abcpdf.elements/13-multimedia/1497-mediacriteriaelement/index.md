# MediaCriteriaElement Class

This class represents the media criteria dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 268, page 489.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=497)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 279, page 613.](https://www.iso.org/standard/63534.html)

A media criteria dictionary specifies the conditions that must be satisfied for a rendition to be selected for playback. Each entry tests one aspect of the playback environment, and all specified tests must pass for the rendition to be considered suitable.

Criteria cover a range of environmental factors: whether the user can interact with the annotation, the language of the system, the rendering technology available, screen depth, screen size, audio volume, player availability, and the type of operating system in use.

When multiple renditions are available in a selector rendition, a conforming reader evaluates the criteria of each candidate in order and selects the first one whose criteria are all satisfied. A rendition without a criteria dictionary is considered unconditionally suitable.

Criteria entries are independent of one another. An absent entry means that criterion is not tested and is treated as satisfied.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaCriteriaElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaCriteriaElement](1-methods/01-mediacriteriaelement.md) | Create a new MediaCriteriaElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media criteria dictionary object. |
| [EntryA](2-properties/02-entrya.md) | Represents the "A" entry of the media criteria dictionary object. |
| [EntryC](2-properties/03-entryc.md) | Represents the "C" entry of the media criteria dictionary object. |
| [EntryO](2-properties/04-entryo.md) | Represents the "O" entry of the media criteria dictionary object. |
| [EntryS](2-properties/05-entrys.md) | Represents the "S" entry of the media criteria dictionary object. |
| [EntryR](2-properties/06-entryr.md) | Represents the "R" entry of the media criteria dictionary object. |
| [EntryD](2-properties/07-entryd.md) | Represents the "D" entry of the media criteria dictionary object. |
| [EntryZ](2-properties/08-entryz.md) | Represents the "Z" entry of the media criteria dictionary object. |
| [EntryV](2-properties/09-entryv.md) | Represents the "V" entry of the media criteria dictionary object. |
| [EntryP](2-properties/10-entryp.md) | Represents the "P" entry of the media criteria dictionary object. |
| [EntryL](2-properties/11-entryl.md) | Represents the "L" entry of the media criteria dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
