# PrintersMarkAnnotationElement Class

This class represents the printer's mark annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 362, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 398, page 812.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

A printer mark annotation identifies a region of a PDF page containing a printer mark such as a registration target, color bar, or crop mark, used in prepress workflows to align separations and verify color accuracy.

The MN entry holds a name identifying the specific mark type, allowing prepress tools to locate marks without analysing their appearance streams.

These annotations appear outside the TrimBox, in the bleed area of the page.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../../12-interactive/1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PrintersMarkAnnotationElement`

## Methods

| Method | Description |
| --- | --- |
| [PrintersMarkAnnotationElement](1-methods/01-printersmarkannotationelement.md) | Create a new PrintersMarkAnnotationElement. |
|  | [inherited methods...](../../12-interactive/1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryMN](2-properties/01-entrymn.md) | Represents the "MN" entry of the printer's mark annotation object. |
|  | [inherited properties...](../../12-interactive/1391-annotationelement/index.md) |
