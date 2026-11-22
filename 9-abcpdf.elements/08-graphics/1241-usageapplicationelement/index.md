# UsageApplicationElement Class

This class represents the usage application dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 103, page 233.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=241)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 101, page 286.](https://www.iso.org/standard/63534.html)

A usage application dictionary specifies how usage metadata in optional content groups should be applied automatically in response to a particular event.

The Event entry names the trigger: View for interactive display, Print for printing, or Export for conversion to another format. When the named event occurs, a conforming processor may use the usage data in the listed groups to set their states.

The OCGs entry lists the optional content groups to which this automatic state-setting applies. Only groups in this list are candidates for usage-based state changes for the named event.

The Category entry lists the usage dictionary keys that are relevant for this application. For example, a print application might list Zoom and Print, meaning only those usage sub-dictionaries are consulted when setting states for printing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.UsageApplicationElement`

## Methods

| Method | Description |
| --- | --- |
| [UsageApplicationElement](1-methods/01-usageapplicationelement.md) | Create a new UsageApplicationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryEvent](2-properties/01-entryevent.md) | Represents the "Event" entry of the usage application dictionary object. |
| [EntryOCGs](2-properties/02-entryocgs.md) | Represents the "OCGs" entry of the usage application dictionary object. |
| [EntryCategory](2-properties/03-entrycategory.md) | Represents the "Category" entry of the usage application dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
