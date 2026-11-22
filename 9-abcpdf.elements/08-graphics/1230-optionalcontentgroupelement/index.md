# OptionalContentGroupElement Class

This class represents the optional content group dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 98, page 222.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=230)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 96, page 273.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because OptionalContentPropertiesElement.EntryOCGs requires it to be so.

An optional content group (OCG) is a named object that controls whether associated content is rendered. Content associated with a group is shown when the group is on and hidden when it is off.

The Name entry provides a human-readable label for the group. This name is typically shown in a viewer's layer panel to allow users to toggle visibility.

The Intent entry constrains how the group is used. A group intended for View may be toggled freely by the user; one intended for Design may be used by authoring tools for design layer control. Multiple intents may be listed.

The Usage entry holds a dictionary that describes the real-world conditions under which the group should be on or off, such as a zoom level range, a print condition, or a language preference. Viewers and processors use this information to set group states automatically.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentGroupElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentGroupElement](1-methods/01-optionalcontentgroupelement.md) | Create a new OptionalContentGroupElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the optional content group dictionary object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the optional content group dictionary object. |
| [EntryIntent](2-properties/03-entryintent.md) | Represents the "Intent" entry of the optional content group dictionary object. |
| [EntryUsage](2-properties/04-entryusage.md) | Represents the "Usage" entry of the optional content group dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
