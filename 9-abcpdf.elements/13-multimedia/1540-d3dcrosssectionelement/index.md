# D3DCrossSectionElement Class

This class represents the 3D cross section dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 311, page 532.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=540)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 322, page 664.](https://www.iso.org/standard/63534.html)

A 3D cross-section dictionary defines a planar cut through a 3D model that reveals its interior. Cross-sections allow viewers to inspect the internal structure of solid models without modifying the model data.

The C entry holds a three-element array specifying the centre point of the cutting plane in model coordinates. The O entry holds a three-element array specifying the orientation of the cutting plane as a normal vector direction.

The PO entry specifies the plane opacity: how transparent the cutting plane itself appears. The PC entry holds the cutting plane colour.

The IV entry, when true, makes the intersecting geometry visible. The IC entry holds the colour of the intersecting geometry. The ST entry, when true, causes the model to be cut and the cross-section to show solid material. The SC entry controls the colour shown on the cut surfaces.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DCrossSectionElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DCrossSectionElement](1-methods/01-d3dcrosssectionelement.md) | Create a new D3DCrossSectionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d cross section dictionary object. |
| [EntryC](2-properties/02-entryc.md) | Represents the "C" entry of the 3d cross section dictionary object. |
| [EntryO](2-properties/03-entryo.md) | Represents the "O" entry of the 3d cross section dictionary object. |
| [EntryPO](2-properties/04-entrypo.md) | Represents the "PO" entry of the 3d cross section dictionary object. |
| [EntryPC](2-properties/05-entrypc.md) | Represents the "PC" entry of the 3d cross section dictionary object. |
| [EntryIV](2-properties/06-entryiv.md) | Represents the "IV" entry of the 3d cross section dictionary object. |
| [EntryIC](2-properties/07-entryic.md) | Represents the "IC" entry of the 3d cross section dictionary object. |
| [EntryST](2-properties/08-entryst.md) | Represents the "ST" entry of the 3d cross section dictionary object. |
| [EntrySC](2-properties/09-entrysc.md) | Represents the "SC" entry of the 3d cross section dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
