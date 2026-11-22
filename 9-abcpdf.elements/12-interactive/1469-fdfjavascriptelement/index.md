# FDFJavaScriptElement Class

This class represents the fdf javascript dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 245, page 461.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=469)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 248, page 558.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FDFJavaScriptElement`

An FDF JavaScript dictionary carries scripts to execute when FDF data is imported. The Before and After scripts run before and after import. The AfterPermsReady script runs after permission infrastructure is initialised. The Doc entry adds named scripts to the target PDF's JavaScript name tree.

## Methods

| Method | Description |
| --- | --- |
| [FDFJavaScriptElement](1-methods/01-fdfjavascriptelement.md) | Create a new FDFJavaScriptElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryBefore](2-properties/01-entrybefore.md) | Represents the "Before" entry of the fdf javascript dictionary object. |
| [EntryAfter](2-properties/02-entryafter.md) | Represents the "After" entry of the fdf javascript dictionary object. |
| [EntryAfterPermsReady](2-properties/03-entryafterpermsready.md) | Represents the "AfterPermsReady" entry of the fdf javascript dictionary object. |
| [EntryDoc](2-properties/04-entrydoc.md) | Represents the "Doc" entry of the fdf javascript dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
