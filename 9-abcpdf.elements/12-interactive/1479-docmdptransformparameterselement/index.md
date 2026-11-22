# DocMDPTransformParametersElement Class

This class represents the docmdp transform parameters dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 254, page 471.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=479)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 257, page 569.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.TransformParametersElement`](../1478-transformparameterselement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.DocMDPTransformParametersElement`

A DocMDP transform parameters dictionary constrains which modifications to the signed document are permitted without invalidating the signature. The P entry selects the permission level: 1 (no modifications), 2 (form filling and signing), or 3 (additionally annotation creation and deletion).

## Methods

| Method | Description |
| --- | --- |
| [DocMDPTransformParametersElement](1-methods/01-docmdptransformparameterselement.md) | Create a new DocMDPTransformParametersElement. |
|  | [inherited methods...](../1478-transformparameterselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryP](2-properties/01-entryp.md) | Represents the "P" entry of the docmdp transform parameters dictionary object. |
| [EntryV](2-properties/02-entryv.md) | Represents the "V" entry of the docmdp transform parameters dictionary object. |
|  | [inherited properties...](../1478-transformparameterselement/index.md) |
