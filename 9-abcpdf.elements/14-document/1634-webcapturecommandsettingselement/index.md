# WebCaptureCommandSettingsElement Class

This class represents the web capture command settings dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 359, page 626.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=634)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 395, page 806.](https://www.iso.org/standard/63534.html)

A web capture command settings dictionary records the global settings in effect during a web capture operation.

The G entry holds a dictionary of settings applying to all content types, such as depth limits and follow-link rules. The C entry holds content-type-specific settings keyed by MIME type.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.WebCaptureCommandSettingsElement`

## Methods

| Method | Description |
| --- | --- |
| [WebCaptureCommandSettingsElement](1-methods/01-webcapturecommandsettingselement.md) | Create a new WebCaptureCommandSettingsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryG](2-properties/01-entryg.md) | Represents the "G" entry of the web capture command settings dictionary object. |
| [EntryC](2-properties/02-entryc.md) | Represents the "C" entry of the web capture command settings dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
