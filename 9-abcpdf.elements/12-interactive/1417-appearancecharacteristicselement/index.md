# AppearanceCharacteristicsElement Class

This class represents the appearance characteristics dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 189, page 409.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=417)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 192, page 496.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AppearanceCharacteristicsElement`

An appearance characteristics dictionary supplies the visual parameters used when a viewer generates appearance streams for a widget annotation automatically. It provides colours, captions, and icon references for the normal, rollover, and down states.

The BC and BG entries supply border and background colours. The CA, RC, and AC entries hold caption text for the three button states. The I, RI, and IX entries reference icon form XObjects.

The IF entry holds an icon fit dictionary controlling how the icon is scaled and positioned. The R entry gives the clockwise rotation. The TP entry selects the relative position of caption and icon.

## Methods

| Method | Description |
| --- | --- |
| [AppearanceCharacteristicsElement](1-methods/01-appearancecharacteristicselement.md) | Create a new AppearanceCharacteristicsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the appearance characteristics dictionary object. |
| [EntryBC](2-properties/02-entrybc.md) | Represents the "BC" entry of the appearance characteristics dictionary object. |
| [EntryBG](2-properties/03-entrybg.md) | Represents the "BG" entry of the appearance characteristics dictionary object. |
| [EntryCA](2-properties/04-entryca.md) | Represents the "CA" entry of the appearance characteristics dictionary object. |
| [EntryRC](2-properties/05-entryrc.md) | Represents the "RC" entry of the appearance characteristics dictionary object. |
| [EntryAC](2-properties/06-entryac.md) | Represents the "AC" entry of the appearance characteristics dictionary object. |
| [EntryI](2-properties/07-entryi.md) | Represents the "I" entry of the appearance characteristics dictionary object. |
| [EntryRI](2-properties/08-entryri.md) | Represents the "RI" entry of the appearance characteristics dictionary object. |
| [EntryIX](2-properties/09-entryix.md) | Represents the "IX" entry of the appearance characteristics dictionary object. |
| [EntryIF](2-properties/10-entryif.md) | Represents the "IF" entry of the appearance characteristics dictionary object. |
| [EntryTP](2-properties/11-entrytp.md) | Represents the "TP" entry of the appearance characteristics dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
