# D3DStreamElement Class

This class represents the 3D stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 300, page 516.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=524)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 311, page 645.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.35, page 56.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=56)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A 3D stream contains the three-dimensional model data for a 3D annotation. The stream body holds the model in a format such as U3D or PRC, identified by the Subtype entry.

The VA entry holds an array of 3D view dictionaries that define the named views available for the model. Viewers present these views in a list from which the user can select. The DV entry names or references the default view.

The Resources entry holds a resources dictionary for assets referenced by the 3D stream, such as textures and auxiliary data files. The OnInstantiate entry holds a 3D JavaScript script that runs when the model is first loaded.

The AN entry references a 3D animation style dictionary that controls how the model animates. The ColorSpace entry specifies the colour space used for lighting and rendering calculations.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DStreamElement](1-methods/01-d3dstreamelement.md) | Create a new D3DStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the 3d stream dictionary object. |
| [EntrySubtype](2-properties/03-entrysubtype.md) | Represents the "Subtype" entry of the 3d stream dictionary object. |
| [EntryVA](2-properties/04-entryva.md) | Represents the "VA" entry of the 3d stream dictionary object. |
| [EntryDV](2-properties/05-entrydv.md) | Represents the "DV" entry of the 3d stream dictionary object. |
| [EntryResources](2-properties/06-entryresources.md) | Represents the "Resources" entry of the 3d stream dictionary object. |
| [EntryOnInstantiate](2-properties/07-entryoninstantiate.md) | Represents the "OnInstantiate" entry of the 3d stream dictionary object. |
| [EntryAN](2-properties/08-entryan.md) | Represents the "AN" entry of the 3d stream dictionary object. |
| [EntryColorSpace](2-properties/09-entrycolorspace.md) | Represents the "ColorSpace" entry of the 3d stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
