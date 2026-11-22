# FixedPrintElement Class

This class represents the fixed print dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 191, page 411.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=419)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 194, page 498.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FixedPrintElement`

A fixed print dictionary controls the size and position of a watermark annotation on printed output, independently of the current page size. The Matrix entry positions the watermark content. The H and V entries anchor it at a fixed fraction of page dimensions.

## Methods

| Method | Description |
| --- | --- |
| [FixedPrintElement](1-methods/01-fixedprintelement.md) | Create a new FixedPrintElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the fixed print dictionary object. |
| [EntryMatrix](2-properties/02-entrymatrix.md) | Represents the "Matrix" entry of the fixed print dictionary object. |
| [EntryH](2-properties/03-entryh.md) | Represents the "H" entry of the fixed print dictionary object. |
| [EntryV](2-properties/04-entryv.md) | Represents the "V" entry of the fixed print dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
