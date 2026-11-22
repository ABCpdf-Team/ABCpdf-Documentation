# UrTransformParametersElement Class

This class represents the ur transform parameters dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 255, page 472.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=480)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 258, page 571.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.TransformParametersElement`](../1478-transformparameterselement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.UrTransformParametersElement`

A UR transform parameters dictionary describes the usage rights enabled by a UR signature. The Document, Annots, Form, Signature, EF, and P entries each carry arrays of names specifying the rights enabled in that category.

The Msg entry provides a human-readable explanation of the rights granted. The V entry identifies the UR transform version.

## Methods

| Method | Description |
| --- | --- |
| [UrTransformParametersElement](1-methods/01-urtransformparameterselement.md) | Create a new UrTransformParametersElement. |
|  | [inherited methods...](../1478-transformparameterselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDocument](2-properties/01-entrydocument.md) | Represents the "Document" entry of the ur transform parameters dictionary object. |
| [EntryMsg](2-properties/02-entrymsg.md) | Represents the "Msg" entry of the ur transform parameters dictionary object. |
| [EntryV](2-properties/03-entryv.md) | Represents the "V" entry of the ur transform parameters dictionary object. |
| [EntryAnnots](2-properties/04-entryannots.md) | Represents the "Annots" entry of the ur transform parameters dictionary object. |
| [EntryForm](2-properties/05-entryform.md) | Represents the "Form" entry of the ur transform parameters dictionary object. |
| [EntrySignature](2-properties/06-entrysignature.md) | Represents the "Signature" entry of the ur transform parameters dictionary object. |
| [EntryEF](2-properties/07-entryef.md) | Represents the "EF" entry of the ur transform parameters dictionary object. |
| [EntryP](2-properties/08-entryp.md) | Represents the "P" entry of the ur transform parameters dictionary object. |
|  | [inherited properties...](../1478-transformparameterselement/index.md) |
