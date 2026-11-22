# RichMediaConfigElement Class

This class represents the richmediaconfiguration dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 342, page 706.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51a, page 88.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=88)

This class is always an indirect object because RichMediaActivationElement.EntryConfiguration and RichMediaContentElement.EntryConfigurations require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RichMediaConfigElement`

A rich media configuration dictionary combines a set of rich media instances into a named playable configuration. The Subtype entry classifies the configuration type. The Instances array lists the rich media instance dictionaries included.

## Methods

| Method | Description |
| --- | --- |
| [RichMediaConfigElement](1-methods/01-richmediaconfigelement.md) | Create a new RichMediaConfigElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the richmediaconfiguration dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the richmediaconfiguration dictionary object. |
| [EntryName](2-properties/03-entryname.md) | Represents the "Name" entry of the richmediaconfiguration dictionary object. |
| [EntryInstances](2-properties/04-entryinstances.md) | Represents the "Instances" entry of the richmediaconfiguration dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
