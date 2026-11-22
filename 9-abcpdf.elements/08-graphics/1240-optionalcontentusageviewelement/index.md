# OptionalContentUsageViewElement Class

This class represents the optional content usage view dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The view usage dictionary specifies whether an optional content group should be visible in an interactive viewer. It allows groups to exist only for printing while remaining hidden on screen, or vice versa.

The ViewState entry holds ON or OFF, indicating the desired visibility state when a view event is processed. A viewer that applies usage-based automatic state setting will set the group accordingly.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentUsageViewElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentUsageViewElement](1-methods/01-optionalcontentusageviewelement.md) | Create a new OptionalContentUsageViewElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryViewState](2-properties/01-entryviewstate.md) | Represents the "ViewState" entry of the optional content usage view dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
