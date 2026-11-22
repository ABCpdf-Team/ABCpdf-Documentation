# AnnotationAdditionalActionsElement Class

This class represents the annotation additional-actions dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 194, page 415.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=423)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 197, page 504.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AnnotationAdditionalActionsElement`

An annotation additional-actions dictionary associates actions with specific interaction events on an annotation. Entry keys name the triggering event and corresponding values are action dictionaries to execute.

Cursor-enter (E) and cursor-exit (X) fire when the mouse moves in or out of the active area. Mouse-down (D) and mouse-up (U) fire during a click. Focus (Fo), blur (Bl), page-open (PO), page-close (PC), page-visible (PV), and page-invisible (PI) handle focus and page navigation events.

## Methods

| Method | Description |
| --- | --- |
| [AnnotationAdditionalActionsElement](1-methods/01-annotationadditionalactionselement.md) | Create a new AnnotationAdditionalActionsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryE](2-properties/01-entrye.md) | Represents the "E" entry of the annotation additional-actions dictionary object. |
| [EntryX](2-properties/02-entryx.md) | Represents the "X" entry of the annotation additional-actions dictionary object. |
| [EntryD](2-properties/03-entryd.md) | Represents the "D" entry of the annotation additional-actions dictionary object. |
| [EntryU](2-properties/04-entryu.md) | Represents the "U" entry of the annotation additional-actions dictionary object. |
| [EntryFo](2-properties/05-entryfo.md) | Represents the "Fo" entry of the annotation additional-actions dictionary object. |
| [EntryBl](2-properties/06-entrybl.md) | Represents the "Bl" entry of the annotation additional-actions dictionary object. |
| [EntryPO](2-properties/07-entrypo.md) | Represents the "PO" entry of the annotation additional-actions dictionary object. |
| [EntryPC](2-properties/08-entrypc.md) | Represents the "PC" entry of the annotation additional-actions dictionary object. |
| [EntryPV](2-properties/09-entrypv.md) | Represents the "PV" entry of the annotation additional-actions dictionary object. |
| [EntryPI](2-properties/10-entrypi.md) | Represents the "PI" entry of the annotation additional-actions dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
