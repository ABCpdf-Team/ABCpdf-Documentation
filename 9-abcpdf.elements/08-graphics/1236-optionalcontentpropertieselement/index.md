# OptionalContentPropertiesElement Class

This class represents the optional content properties dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 100, page 228.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=236)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 98, page 281.](https://www.iso.org/standard/63534.html)

The optional content properties dictionary is stored in the document catalog and acts as the registry for all optional content groups and configurations in the document.

The OCGs entry lists every optional content group object in the document. A conforming reader uses this list to discover all groups and their initial states.

The D entry holds the default viewing configuration. This configuration sets the initial on/off state for all groups and controls how the viewer's layer interface behaves when the document is opened.

The Configs entry lists additional named configurations. Each configuration is an independent set of group states and interface settings. Users or applications may switch between configurations to change the document's appearance.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentPropertiesElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentPropertiesElement](1-methods/01-optionalcontentpropertieselement.md) | Create a new OptionalContentPropertiesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryOCGs](2-properties/01-entryocgs.md) | Represents the "OCGs" entry of the optional content properties dictionary object. |
| [EntryD](2-properties/02-entryd.md) | Represents the "D" entry of the optional content properties dictionary object. |
| [EntryConfigs](2-properties/03-entryconfigs.md) | Represents the "Configs" entry of the optional content properties dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
