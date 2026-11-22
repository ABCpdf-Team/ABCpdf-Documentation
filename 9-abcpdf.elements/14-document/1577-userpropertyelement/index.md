# UserPropertyElement Class

This class represents the user property dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 329, page 569.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=577)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 362, page 736.](https://www.iso.org/standard/63534.html)

A user property dictionary defines a single named property attached to a structure element, allowing applications to associate custom metadata with logical document structures.

The N entry holds the property name as a text string. The V entry holds the value, which may be any PDF object type. The F entry provides a formatted text string for display.

The H entry, when true, marks the property as hidden from user interfaces while preserving it in the document for use by the application that created it.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.UserPropertyElement`

## Methods

| Method | Description |
| --- | --- |
| [UserPropertyElement](1-methods/01-userpropertyelement.md) | Create a new UserPropertyElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryN](2-properties/01-entryn.md) | Represents the "N" entry of the user property dictionary object. |
| [EntryV](2-properties/02-entryv.md) | Represents the "V" entry of the user property dictionary object. |
| [EntryF](2-properties/03-entryf.md) | Represents the "F" entry of the user property dictionary object. |
| [EntryH](2-properties/04-entryh.md) | Represents the "H" entry of the user property dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
