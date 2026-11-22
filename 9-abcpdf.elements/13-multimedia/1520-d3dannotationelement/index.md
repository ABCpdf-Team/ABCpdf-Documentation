# D3DAnnotationElement Class

This class represents the 3D annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 298, page 512.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=520)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 309, page 639.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.33, page 55.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=55)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

A 3D annotation embeds a three-dimensional model in a PDF document. The annotation displays the model in an interactive viewport that allows users to rotate, zoom, and examine the model from any angle.

The 3DD entry references the 3D stream containing the model data. The 3DV entry names or references the default view to use when the annotation is first displayed.

The 3DA entry references a 3D activation dictionary that controls when and how the 3D content becomes active. The 3DI entry, when false, prevents the 3D content from being interactive until activated.

The 3DB entry holds the default background colour for the 3D viewport. The 3DU entry controls whether the measurement and markup tools are available. The GEO entry references geospatial data associated with the 3D model.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../../12-interactive/1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.D3DAnnotationElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DAnnotationElement](1-methods/01-d3dannotationelement.md) | Create a new D3DAnnotationElement. |
|  | [inherited methods...](../../12-interactive/1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Entry3DD](2-properties/01-entry3dd.md) | Represents the "3DD" entry of the 3d annotation object. |
| [Entry3DV](2-properties/02-entry3dv.md) | Represents the "3DV" entry of the 3d annotation object. |
| [Entry3DA](2-properties/03-entry3da.md) | Represents the "3DA" entry of the 3d annotation object. |
| [Entry3DI](2-properties/04-entry3di.md) | Represents the "3DI" entry of the 3d annotation object. |
| [Entry3DB](2-properties/05-entry3db.md) | Represents the "3DB" entry of the 3d annotation object. |
| [Entry3DU](2-properties/06-entry3du.md) | Represents the "3DU" entry of the 3d annotation object. |
| [EntryGEO](2-properties/07-entrygeo.md) | Represents the "GEO" entry of the 3d annotation object. |
|  | [inherited properties...](../../12-interactive/1391-annotationelement/index.md) |
