# TransitionElement Class

This class represents the transition dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 162, page 378.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=386)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 164, page 459.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.TransitionElement`

A transition dictionary describes the visual effect used to move between pages in full-screen presentation mode. The effect applies when advancing from the page that owns the transition to the next page.

The S entry names the transition style. Different styles support different subsets of the other entries, so the meaning of Di (direction) and Dm (dimension) depends on the chosen style.

The D entry sets the duration in seconds. SS is specific to the Fly transition and sets the starting scale. B controls whether the page boundary is visible during the Fly effect.

## Methods

| Method | Description |
| --- | --- |
| [TransitionElement](1-methods/01-transitionelement.md) | Create a new TransitionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the transition dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the transition dictionary object. |
| [EntryD](2-properties/03-entryd.md) | Represents the "D" entry of the transition dictionary object. |
| [EntryDm](2-properties/04-entrydm.md) | Represents the "Dm" entry of the transition dictionary object. |
| [EntryM](2-properties/05-entrym.md) | Represents the "M" entry of the transition dictionary object. |
| [EntryDi](2-properties/06-entrydi.md) | Represents the "Di" entry of the transition dictionary object. |
| [EntrySS](2-properties/07-entryss.md) | Represents the "SS" entry of the transition dictionary object. |
| [EntryB](2-properties/08-entryb.md) | Represents the "B" entry of the transition dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
