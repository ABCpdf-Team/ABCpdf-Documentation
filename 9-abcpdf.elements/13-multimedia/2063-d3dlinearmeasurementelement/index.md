# D3DLinearMeasurementElement Class

This class represents the 3D linear dimension measurement. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 327, page 684.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39b, page 63.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=63)

A 3D linear measurement dictionary defines a distance measurement between two points on a 3D model. It specifies the two anchor points, the measurement line endpoint positions, and the display formatting.

The AP entry references the annotation appearance stream for the measurement. The A1 and A2 entries hold three-element arrays giving the positions of the two measurement anchor points in model coordinates.

The N1 and N2 entries hold the surface normal vectors at each anchor point, used to orient the measurement perpendicular to the model surface.

The TP entry specifies the position of the measurement text label. The TY entry names the measurement type. The TS entry holds the measurement text as a string.

The C entry holds the measurement colour. The V entry holds the numeric measurement value. The U entry specifies the measurement units. The P entry holds the measurement precision.

The UT entry, when true, causes the measurement units to be displayed alongside the numeric value. The S entry specifies the scale factor applied to the measurement value.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.D3DMeasurementElement`](../2062-d3dmeasurementelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.D3DLinearMeasurementElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DLinearMeasurementElement](1-methods/01-d3dlinearmeasurementelement.md) | Create a new D3DLinearMeasurementElement. |
|  | [inherited methods...](../2062-d3dmeasurementelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAP](2-properties/01-entryap.md) | Represents the "AP" entry of the 3d linear dimension measurement object. |
| [EntryA1](2-properties/02-entrya1.md) | Represents the "A1" entry of the 3d linear dimension measurement object. |
| [EntryN1](2-properties/03-entryn1.md) | Represents the "N1" entry of the 3d linear dimension measurement object. |
| [EntryA2](2-properties/04-entrya2.md) | Represents the "A2" entry of the 3d linear dimension measurement object. |
| [EntryN2](2-properties/05-entryn2.md) | Represents the "N2" entry of the 3d linear dimension measurement object. |
| [EntryTP](2-properties/06-entrytp.md) | Represents the "TP" entry of the 3d linear dimension measurement object. |
| [EntryTY](2-properties/07-entryty.md) | Represents the "TY" entry of the 3d linear dimension measurement object. |
| [EntryTS](2-properties/08-entryts.md) | Represents the "TS" entry of the 3d linear dimension measurement object. |
| [EntryC](2-properties/09-entryc.md) | Represents the "C" entry of the 3d linear dimension measurement object. |
| [EntryV](2-properties/10-entryv.md) | Represents the "V" entry of the 3d linear dimension measurement object. |
| [EntryU](2-properties/11-entryu.md) | Represents the "U" entry of the 3d linear dimension measurement object. |
| [EntryP](2-properties/12-entryp.md) | Represents the "P" entry of the 3d linear dimension measurement object. |
| [EntryUT](2-properties/13-entryut.md) | Represents the "UT" entry of the 3d linear dimension measurement object. |
| [EntryS](2-properties/14-entrys.md) | Represents the "S" entry of the 3d linear dimension measurement object. |
|  | [inherited properties...](../2062-d3dmeasurementelement/index.md) |
