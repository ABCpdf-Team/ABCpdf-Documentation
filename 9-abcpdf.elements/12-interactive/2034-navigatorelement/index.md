# NavigatorElement Class

This class represents the navigator dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 160, page 454.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6d, page 34.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=34)

This class is always an indirect object because CollectionElement.EntryNavigator requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.NavigatorElement`

A navigator dictionary describes a SWF-based custom navigator component that replaces the default portfolio UI. The SWF entry references the embedded SWF stream.

The Name, Desc, Category, ID, Version, and APIVersion entries provide metadata. The LoadType entry controls loading eagerness. The Locale, Strings, and InitialFields entries support localisation and initial configuration.

The Resources and Layout entries supply additional resources and layout parameters used by the navigator to render the portfolio interface.

## Methods

| Method | Description |
| --- | --- |
| [NavigatorElement](1-methods/01-navigatorelement.md) | Create a new NavigatorElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the navigator dictionary object. |
| [EntrySWF](2-properties/02-entryswf.md) | Represents the "SWF" entry of the navigator dictionary object. |
| [EntryName](2-properties/03-entryname.md) | Represents the "Name" entry of the navigator dictionary object. |
| [EntryDesc](2-properties/04-entrydesc.md) | Represents the "Desc" entry of the navigator dictionary object. |
| [EntryCategory](2-properties/05-entrycategory.md) | Represents the "Category" entry of the navigator dictionary object. |
| [EntryID](2-properties/06-entryid.md) | Represents the "ID" entry of the navigator dictionary object. |
| [EntryVersion](2-properties/07-entryversion.md) | Represents the "Version" entry of the navigator dictionary object. |
| [EntryAPIVersion](2-properties/08-entryapiversion.md) | Represents the "APIVersion" entry of the navigator dictionary object. |
| [EntryLoadType](2-properties/09-entryloadtype.md) | Represents the "LoadType" entry of the navigator dictionary object. |
| [EntryIcon](2-properties/10-entryicon.md) | Represents the "Icon" entry of the navigator dictionary object. |
| [EntryLocale](2-properties/11-entrylocale.md) | Represents the "Locale" entry of the navigator dictionary object. |
| [EntryStrings](2-properties/12-entrystrings.md) | Represents the "Strings" entry of the navigator dictionary object. |
| [EntryInitialFields](2-properties/13-entryinitialfields.md) | Represents the "InitialFields" entry of the navigator dictionary object. |
| [EntryResources](2-properties/14-entryresources.md) | Represents the "Resources" entry of the navigator dictionary object. |
| [EntryLayout](2-properties/15-entrylayout.md) | Represents the "Layout" entry of the navigator dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
