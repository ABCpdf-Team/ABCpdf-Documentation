# ProjectionElement Class

This class represents the projection dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 305, page 524.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=532)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 316, page 655.](https://www.iso.org/standard/63534.html)

A projection dictionary specifies the camera projection for a 3D view. The CS entry names the projection type: P for perspective or O for orthographic. Each type has its own set of defining parameters.

For perspective projections, the F and N entries give the far and near clipping plane distances. The FOV entry gives the field of view angle in degrees. The PS entry controls how the field of view is measured: either from the diagonal, the horizontal, or the vertical extent of the viewport.

For orthographic projections, the OS entry gives the orthographic scale factor. The OB entry names the orthographic bounding behaviour.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ProjectionElement`

## Methods

| Method | Description |
| --- | --- |
| [ProjectionElement](1-methods/01-projectionelement.md) | Create a new ProjectionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the projection dictionary object. |
| [EntryCS](2-properties/02-entrycs.md) | Represents the "CS" entry of the projection dictionary object. |
| [EntryF](2-properties/03-entryf.md) | Represents the "F" entry of the projection dictionary object. |
| [EntryN](2-properties/04-entryn.md) | Represents the "N" entry of the projection dictionary object. |
| [EntryFOV](2-properties/05-entryfov.md) | Represents the "FOV" entry of the projection dictionary object. |
| [EntryPS](2-properties/06-entryps.md) | Represents the "PS" entry of the projection dictionary object. |
| [EntryOS](2-properties/07-entryos.md) | Represents the "OS" entry of the projection dictionary object. |
| [EntryOB](2-properties/08-entryob.md) | Represents the "OB" entry of the projection dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
