# RichMediaInstanceElement Class

This class represents the richmediainstance dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 343, page 706.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51b, page 89.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=89)

This class is always an indirect object because D3DNodeElement.EntryInstance, RichMediaConfigElement.EntryInstances, RichMediaExecuteActionElement.EntryTI and ViewParamsElement.EntryInstance require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RichMediaInstanceElement`

A rich media instance dictionary references a single media asset and its playback parameters within a configuration. The Subtype entry identifies the media kind (3D, Flash, Sound, or Video). The Asset entry holds the file specification. The Params entry holds type-specific playback settings.

## Methods

| Method | Description |
| --- | --- |
| [RichMediaInstanceElement](1-methods/01-richmediainstanceelement.md) | Create a new RichMediaInstanceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the richmediainstance dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the richmediainstance dictionary object. |
| [EntryParams](2-properties/03-entryparams.md) | Represents the "Params" entry of the richmediainstance dictionary object. |
| [EntryAsset](2-properties/04-entryasset.md) | Represents the "Asset" entry of the richmediainstance dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
