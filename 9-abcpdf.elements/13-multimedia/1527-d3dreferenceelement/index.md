# D3DReferenceElement Class

This class represents the 3D reference dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 303, page 519.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=527)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 314, page 648.](https://www.iso.org/standard/63534.html)

A 3D reference dictionary links an external 3D annotation to its model data. It is used in the 3D annotation external data dictionary to reference a 3D stream that may reside in a different PDF document.

The 3DD entry holds an indirect reference to the 3D stream dictionary. This reference may point to a stream in the current document or in an externally specified document.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DReferenceElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DReferenceElement](1-methods/01-d3dreferenceelement.md) | Create a new D3DReferenceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d reference dictionary object. |
| [Entry3DD](2-properties/02-entry3dd.md) | Represents the "3DD" entry of the 3d reference dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
