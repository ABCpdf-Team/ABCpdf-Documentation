# DeviceNColorSpaceAttributesElement Class

This class represents the devicen colour space attributes dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 71, page 161.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=169)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 70, page 203.](https://www.iso.org/standard/63534.html)

The DeviceN attributes dictionary carries metadata that helps a conforming reader simulate or process the colorants in a DeviceN color space.

The Colorants entry maps each colorant name to its corresponding Separation color space. This allows a reader to know the individual characteristics of each component colorant even when they are used together.

The Process entry identifies which of the DeviceN components correspond to standard process colorants and which process color space those components belong to. This distinction matters when converting to or from a process color model.

The MixingHints entry provides additional guidance for soft-proofing and ink limiting, including solidities and printing order. These values are advisory rather than normative.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DeviceNColorSpaceAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [DeviceNColorSpaceAttributesElement](1-methods/01-devicencolorspaceattributeselement.md) | Create a new DeviceNColorSpaceAttributesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the devicen colour space attributes dictionary object. |
| [EntryColorants](2-properties/02-entrycolorants.md) | Represents the "Colorants" entry of the devicen colour space attributes dictionary object. |
| [EntryProcess](2-properties/03-entryprocess.md) | Represents the "Process" entry of the devicen colour space attributes dictionary object. |
| [EntryMixingHints](2-properties/04-entrymixinghints.md) | Represents the "MixingHints" entry of the devicen colour space attributes dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
