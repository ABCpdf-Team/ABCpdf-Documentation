# OptionalContentUsageElement Class

This class represents the optional content usage dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The optional content usage dictionary holds a set of sub-dictionaries that each describe a real-world condition under which the associated OCG should be on or off. Conforming readers may use these entries to set group states automatically.

The CreatorInfo entry records which application defined the usage metadata and what kind of content the group represents.

The Language entry specifies a preferred language for the group's content. Viewers that apply language-based automatic state setting use this entry to match the viewer's locale.

The Export entry controls whether the group is visible when the document is exported to another format. This affects batch processing and format conversion workflows.

The Zoom entry defines a magnification range within which the group should be visible. Groups outside the zoom range are hidden, allowing content to adapt to the viewer's zoom level.

The Print entry controls visibility during printing. It can restrict a group to a specific printing condition or mark it as never printable.

The View entry determines whether the group is visible in an interactive viewer. This allows groups to be used only for printing with no screen representation.

The User entry restricts visibility based on user type or identity. This is an advisory entry that applications may honour to show role-appropriate content.

The PageElement entry marks the group as representing a specific page element type, such as a header or footer. Layout applications use this to manage repeating structural elements.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageElement](1-methods/01-optionalcontentusageelement.md) | Create a new OptionalContentUsageElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryCreatorInfo](2-properties/01-entrycreatorinfo.md) | Represents the "CreatorInfo" entry of the optional content usage dictionary object. |
| [EntryLanguage](2-properties/02-entrylanguage.md) | Represents the "Language" entry of the optional content usage dictionary object. |
| [EntryExport](2-properties/03-entryexport.md) | Represents the "Export" entry of the optional content usage dictionary object. |
| [EntryZoom](2-properties/04-entryzoom.md) | Represents the "Zoom" entry of the optional content usage dictionary object. |
| [EntryPrint](2-properties/05-entryprint.md) | Represents the "Print" entry of the optional content usage dictionary object. |
| [EntryView](2-properties/06-entryview.md) | Represents the "View" entry of the optional content usage dictionary object. |
| [EntryUser](2-properties/07-entryuser.md) | Represents the "User" entry of the optional content usage dictionary object. |
| [EntryPageElement](2-properties/08-entrypageelement.md) | Represents the "PageElement" entry of the optional content usage dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
