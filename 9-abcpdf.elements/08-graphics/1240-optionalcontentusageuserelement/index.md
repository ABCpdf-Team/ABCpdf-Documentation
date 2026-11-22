# OptionalContentUsageUserElement Class

This class represents the optional content usage user dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The user usage dictionary restricts an optional content group to a specific user type or named user. Applications may use this to show content appropriate to the viewer's role.

The Type entry classifies the user as an individual or a group. This distinction allows targeting either a specific person or a category of users.

The Name entry holds the identifier of the user or user group. It may be a single string or an array of strings for multiple targets.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageUserElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageUserElement](1-methods/01-optionalcontentusageuserelement.md) | Create a new OptionalContentUsageUserElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the optional content usage user dictionary object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the optional content usage user dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
