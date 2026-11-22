# OptionalContentUsageExportElement Class

This class represents the optional content usage export dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The export usage dictionary specifies whether an optional content group should be treated as visible when the document's content is exported to another format or application.

The ExportState entry holds a name indicating the desired visibility: ON means the group should appear in the exported content, and OFF means it should be suppressed.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageExportElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageExportElement](1-methods/01-optionalcontentusageexportelement.md) | Create a new OptionalContentUsageExportElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryExportState](2-properties/01-entryexportstate.md) | Represents the "ExportState" entry of the optional content usage export dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
