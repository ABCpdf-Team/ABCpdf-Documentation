# ProjectionAnnotationElement Class

This class represents the projection annotation. This is definitively detailed in:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: page39, page 39.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=39)

This class is always an indirect object because D3DAngularMeasurementElement.EntryS, D3DCommentNoteElement.EntryS, D3DLinearMeasurementElement.EntryS, D3DPerpendicularMeasurementElement.EntryS and D3DRadialMeasurementElement.EntryS require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.ProjectionAnnotationElement`

A projection annotation links a 2D markup annotation to a node in a 3D scene. When the 3D scene is displayed the annotation is projected onto the relevant 3D model feature. The IT entry classifies the kind of projection.

## Methods

| Method | Description |
| --- | --- |
| [ProjectionAnnotationElement](1-methods/01-projectionannotationelement.md) | Create a new ProjectionAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryIT](2-properties/01-entryit.md) | Represents the "IT" entry of the projection annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
