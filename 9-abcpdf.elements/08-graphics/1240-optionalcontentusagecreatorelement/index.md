# OptionalContentUsageCreatorElement Class

This class represents the optional content usage creator dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The optional content usage creator dictionary records information about the application or workflow that assigned usage metadata to an optional content group.

The Creator entry identifies the application that set the usage data. This is an informational string; it does not affect how the usage data is processed.

The Subtype entry names the type of creator application, helping other tools understand the context in which the usage was defined.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageCreatorElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageCreatorElement](1-methods/01-optionalcontentusagecreatorelement.md) | Create a new OptionalContentUsageCreatorElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryCreator](2-properties/01-entrycreator.md) | Represents the "Creator" entry of the optional content usage creator dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the optional content usage creator dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
