# OptionalContentConfigElement Class

This class represents the optional content configuration dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 229.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=237)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 281.](https://www.iso.org/standard/63534.html)

An optional content configuration dictionary defines a complete set of visibility states and user interface settings for the optional content groups in a document.

The Name and Creator entries identify the configuration and the application that created it. These are informational and do not affect rendering.

BaseState sets the default state for all groups in this configuration: ON means all groups start visible, OFF means all start hidden, and Unchanged means each group retains its current state. The ON and OFF arrays then override the base state for specific groups.

The Intent entry restricts which groups this configuration applies to. Only groups whose intent matches are affected by the configuration's state settings.

The AS entry lists usage application dictionaries. Each one specifies an event (such as View or Print) and a set of groups whose states should be set automatically based on their Usage entries when that event occurs.

The Order entry provides a nested array that defines how groups are presented in the viewer's layer panel. The ordering is purely for the user interface and does not affect rendering.

ListMode controls whether the viewer shows all groups in the panel or only those that are set to on. This affects how the layer interface looks to the user.

RBGroups defines radio-button group arrays. Within each array, turning one group on automatically turns all others off, preventing conflicting combinations.

The Locked entry lists groups that the user cannot toggle interactively. These groups may still be changed programmatically or by usage applications.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentConfigElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentConfigElement](1-methods/01-optionalcontentconfigelement.md) | Create a new OptionalContentConfigElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryName](2-properties/01-entryname.md) | Represents the "Name" entry of the optional content configuration dictionary object. |
| [EntryCreator](2-properties/02-entrycreator.md) | Represents the "Creator" entry of the optional content configuration dictionary object. |
| [EntryBaseState](2-properties/03-entrybasestate.md) | Represents the "BaseState" entry of the optional content configuration dictionary object. |
| [EntryON](2-properties/04-entryon.md) | Represents the "ON" entry of the optional content configuration dictionary object. |
| [EntryOFF](2-properties/05-entryoff.md) | Represents the "OFF" entry of the optional content configuration dictionary object. |
| [EntryIntent](2-properties/06-entryintent.md) | Represents the "Intent" entry of the optional content configuration dictionary object. |
| [EntryAS](2-properties/07-entryas.md) | Represents the "AS" entry of the optional content configuration dictionary object. |
| [EntryOrder](2-properties/08-entryorder.md) | Represents the "Order" entry of the optional content configuration dictionary object. |
| [EntryListMode](2-properties/09-entrylistmode.md) | Represents the "ListMode" entry of the optional content configuration dictionary object. |
| [EntryRBGroups](2-properties/10-entryrbgroups.md) | Represents the "RBGroups" entry of the optional content configuration dictionary object. |
| [EntryLocked](2-properties/11-entrylocked.md) | Represents the "Locked" entry of the optional content configuration dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
