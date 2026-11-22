# OptionalContentUsagePrintElement Class

This class represents the optional content usage print dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The print usage dictionary controls whether an optional content group is visible during printing and, optionally, under what printing conditions.

The PrintState entry holds ON or OFF to indicate the desired group state during a print event. Viewers and processors that honour usage-based automatic state setting apply this when printing.

The Subtype entry further qualifies the printing condition, for example distinguishing screen printing from commercial printing. This allows groups to target specific output workflows.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsagePrintElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsagePrintElement](1-methods/01-optionalcontentusageprintelement.md) | Create a new OptionalContentUsagePrintElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the optional content usage print dictionary object. |
| [EntryPrintState](2-properties/02-entryprintstate.md) | Represents the "PrintState" entry of the optional content usage print dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
