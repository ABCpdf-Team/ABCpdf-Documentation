# D3DMeasurementElement Class

This class represents the 3D measurement dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 326, page 682.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39a, page 62.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=62)

A 3D measurement dictionary is the base type for 3D annotation measurements attached to a 3D model. Measurements associate geometric relationships in the 3D space with numeric values displayed as annotations.

The TRL entry holds the transformation matrix defining the coordinate space in which the measurement is expressed. This matrix maps from the measurement coordinate space to the model coordinate space, allowing measurements to remain correct when the model is transformed.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DMeasurementElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.D3DAngularMeasurementElement`](../2068-d3dangularmeasurementelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.D3DCommentNoteElement`](../2074-d3dcommentnoteelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.D3DLinearMeasurementElement`](../2063-d3dlinearmeasurementelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.D3DPerpendicularMeasurementElement`](../2065-d3dperpendicularmeasurementelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.D3DRadialMeasurementElement`](../2071-d3dradialmeasurementelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [D3DMeasurementElement](1-methods/01-d3dmeasurementelement.md) | Create a new D3DMeasurementElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d measurement dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the 3d measurement dictionary object. |
| [EntryTRL](2-properties/03-entrytrl.md) | Represents the "TRL" entry of the 3d measurement dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
