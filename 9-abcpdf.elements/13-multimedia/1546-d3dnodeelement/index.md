# D3DNodeElement Class

This class represents the 3D node dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 312, page 538.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=546)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 9.47, page 58.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=66)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 323, page 670.](https://www.iso.org/standard/63534.html)

A 3D node dictionary modifies the appearance or visibility of a named node within the 3D model hierarchy. Node dictionaries are used in 3D views to override the default appearance of specific model components.

The N entry holds the node name as a byte string, identifying the node within the model hierarchy. The Instance entry holds the instance name if the same named node appears multiple times.

The Data entry references a 3D stream providing replacement geometry data for the node. The RM entry references a render mode dictionary overriding the node render mode. The O entry specifies the node opacity.

The V entry, when false, hides the node. The M entry holds a 12-element array defining a transformation matrix for the node.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DNodeElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DNodeElement](1-methods/01-d3dnodeelement.md) | Create a new D3DNodeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d node dictionary object. |
| [EntryN](2-properties/02-entryn.md) | Represents the "N" entry of the 3d node dictionary object. |
| [EntryInstance](2-properties/03-entryinstance.md) | Represents the "Instance" entry of the 3d node dictionary object. |
| [EntryData](2-properties/04-entrydata.md) | Represents the "Data" entry of the 3d node dictionary object. |
| [EntryRM](2-properties/05-entryrm.md) | Represents the "RM" entry of the 3d node dictionary object. |
| [EntryO](2-properties/06-entryo.md) | Represents the "O" entry of the 3d node dictionary object. |
| [EntryV](2-properties/07-entryv.md) | Represents the "V" entry of the 3d node dictionary object. |
| [EntryM](2-properties/08-entrym.md) | Represents the "M" entry of the 3d node dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
