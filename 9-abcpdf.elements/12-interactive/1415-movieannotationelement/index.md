# MovieAnnotationElement Class

This class represents the movie annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 186, page 407.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=415)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 189, page 493.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because MovieActionElement.EntryAnnotation requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.MovieAnnotationElement`

A movie annotation embeds a reference to a movie file at a page location. Note that movie annotations are deprecated in PDF 2.0 in favour of screen annotations with rendition actions.

The Movie entry holds the file specification and playback parameters. The T entry provides a title used by movie actions to locate the annotation by name.

## Methods

| Method | Description |
| --- | --- |
| [MovieAnnotationElement](1-methods/01-movieannotationelement.md) | Create a new MovieAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryT](2-properties/01-entryt.md) | Represents the "T" entry of the movie annotation object. |
| [EntryMovie](2-properties/02-entrymovie.md) | Represents the "Movie" entry of the movie annotation object. |
| [EntryA](2-properties/03-entrya.md) | Represents the "A" entry of the movie annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
