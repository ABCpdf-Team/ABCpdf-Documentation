# WatermarkAnnotationElement Class

This class represents the watermark annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 190, page 411.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=419)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 193, page 498.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.WatermarkAnnotationElement`

A watermark annotation displays a graphic at a fixed physical size and position when printed, regardless of scaling applied to other page content.

The FixedPrint entry references the fixed print dictionary that holds the transformation and page-fraction anchors.

## Methods

| Method | Description |
| --- | --- |
| [WatermarkAnnotationElement](1-methods/01-watermarkannotationelement.md) | Create a new WatermarkAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFixedPrint](2-properties/01-entryfixedprint.md) | Represents the "FixedPrint" entry of the watermark annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
