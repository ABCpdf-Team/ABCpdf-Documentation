# RequirementHandlerElement Class

This class represents the requirement handler dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 265, page 485.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=493)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 276, page 608.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RequirementHandlerElement`

A requirement handler dictionary provides viewer-specific instructions for satisfying a document requirement. The S entry names the handler subtype. The Script entry holds a JavaScript string the viewer evaluates to check or satisfy the requirement.

## Methods

| Method | Description |
| --- | --- |
| [RequirementHandlerElement](1-methods/01-requirementhandlerelement.md) | Create a new RequirementHandlerElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the requirement handler dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the requirement handler dictionary object. |
| [EntryScript](2-properties/03-entryscript.md) | Represents the "Script" entry of the requirement handler dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
