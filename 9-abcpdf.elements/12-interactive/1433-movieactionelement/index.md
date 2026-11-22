# MovieActionElement Class

This class represents the movie action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 209, page 425.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=433)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 213, page 517.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.MovieActionElement`

A movie action controls playback of a movie annotation. The Operation entry selects the command: Play, Stop, Pause, or Resume. The Annotation entry identifies the target by indirect reference; T identifies it by title string.

## Methods

| Method | Description |
| --- | --- |
| [MovieActionElement](1-methods/01-movieactionelement.md) | Create a new MovieActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAnnotation](2-properties/01-entryannotation.md) | Represents the "Annotation" entry of the movie action object. |
| [EntryT](2-properties/02-entryt.md) | Represents the "T" entry of the movie action object. |
| [EntryOperation](2-properties/03-entryoperation.md) | Represents the "Operation" entry of the movie action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
