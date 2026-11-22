# GoTo3DViewActionElement Class

This class represents the go-to-3D-view action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 216, page 429.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=437)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 220, page 522.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.GoTo3DViewActionElement`

A go-to-3D-view action activates a specific stored camera view within a 3D annotation. The TA entry references the annotation. The V entry identifies the target view by index, name, or one of the keywords First, Last, Next, or Prev.

## Methods

| Method | Description |
| --- | --- |
| [GoTo3DViewActionElement](1-methods/01-goto3dviewactionelement.md) | Create a new GoTo3DViewActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTA](2-properties/01-entryta.md) | Represents the "TA" entry of the go-to-3d-view action object. |
| [EntryV](2-properties/02-entryv.md) | Represents the "V" entry of the go-to-3d-view action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
