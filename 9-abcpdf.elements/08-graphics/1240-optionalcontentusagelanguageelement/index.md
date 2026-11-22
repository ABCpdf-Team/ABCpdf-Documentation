# OptionalContentUsageLanguageElement Class

This class represents the optional content usage language dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The language usage dictionary associates an optional content group with a language preference. A conforming reader may turn the group on or off based on the viewer's current language setting.

The Lang entry holds a language tag in the format defined by RFC 3066, identifying the language of the group's content.

The Preferred entry, when set to ON, marks this language usage as the preferred state for the specified language. A viewer that finds no exact language match may fall back to preferred groups.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageLanguageElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageLanguageElement](1-methods/01-optionalcontentusagelanguageelement.md) | Create a new OptionalContentUsageLanguageElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryLang](2-properties/01-entrylang.md) | Represents the "Lang" entry of the optional content usage language dictionary object. |
| [EntryPreferred](2-properties/02-entrypreferred.md) | Represents the "Preferred" entry of the optional content usage language dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
