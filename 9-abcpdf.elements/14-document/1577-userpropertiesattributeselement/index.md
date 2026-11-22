# UserPropertiesAttributesElement Class

This class represents the user properties attributes. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 328, page 569.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=577)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 361, page 736.](https://www.iso.org/standard/63534.html)

A user properties attributes dictionary carries an array of user property dictionaries, each defining one custom property of a structure element. User properties allow applications to attach arbitrary named data to structure elements beyond the standard attribute sets.

The P entry holds the array of individual user property dictionaries. Each defines one property with a name, value, formatted display string, and a visibility flag.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AttributesElement`](../1575-attributeselement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.UserPropertiesAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [UserPropertiesAttributesElement](1-methods/01-userpropertiesattributeselement.md) | Create a new UserPropertiesAttributesElement. |
|  | [inherited methods...](../1575-attributeselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryP](2-properties/01-entryp.md) | Represents the "P" entry of the user properties attributes object. |
|  | [inherited properties...](../1575-attributeselement/index.md) |
