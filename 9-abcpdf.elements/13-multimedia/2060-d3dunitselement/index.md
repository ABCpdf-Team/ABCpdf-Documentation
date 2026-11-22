# D3DUnitsElement Class

This class represents the 3D units dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 325, page 680.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.33a, page 60.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=60)

A 3D units dictionary defines the unit system for 3D measurements in a 3D annotation. It specifies the translation scale and units for three orthogonal measurement axes, allowing measurements made on the 3D model to be expressed in meaningful physical units.

For each of the three measurement axes (translation T, a second axis U, and a depth axis D), the dictionary holds a scale numerator (Sm), scale denominator (Sn), and a unit name (U). The actual scale factor is Sm divided by Sn, expressing the ratio of model units to the named unit.

Unit names are text strings such as m, cm, mm, in, or ft. Consistent units allow measurement tools and external applications to interpret model dimensions correctly.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DUnitsElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DUnitsElement](1-methods/01-d3dunitselement.md) | Create a new D3DUnitsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTSm](2-properties/01-entrytsm.md) | Represents the "TSm" entry of the 3d units dictionary object. |
| [EntryTSn](2-properties/02-entrytsn.md) | Represents the "TSn" entry of the 3d units dictionary object. |
| [EntryTU](2-properties/03-entrytu.md) | Represents the "TU" entry of the 3d units dictionary object. |
| [EntryUSm](2-properties/04-entryusm.md) | Represents the "USm" entry of the 3d units dictionary object. |
| [EntryUSn](2-properties/05-entryusn.md) | Represents the "USn" entry of the 3d units dictionary object. |
| [EntryUU](2-properties/06-entryuu.md) | Represents the "UU" entry of the 3d units dictionary object. |
| [EntryDSm](2-properties/07-entrydsm.md) | Represents the "DSm" entry of the 3d units dictionary object. |
| [EntryDSn](2-properties/08-entrydsn.md) | Represents the "DSn" entry of the 3d units dictionary object. |
| [EntryDU](2-properties/09-entrydu.md) | Represents the "DU" entry of the 3d units dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
