# MovieElement Class

This class represents the movie dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 295, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 306, page 635.](https://www.iso.org/standard/63534.html)

A movie dictionary is the legacy mechanism for associating a video file with a movie annotation. It references the video file, specifies the aspect ratio of the movie frame, and optionally provides a poster image.

The F entry holds a file specification for the movie file. Aspect holds a two-element array giving the movie frame dimensions as a ratio.

The Rotate entry specifies a clockwise rotation in degrees applied to the movie frame. The Poster entry may be a boolean or an indirect reference: if true, a frame from the movie is used as the poster image; if an indirect reference, it points to an image XObject used as the poster.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MovieElement`

## Methods

| Method | Description |
| --- | --- |
| [MovieElement](1-methods/01-movieelement.md) | Create a new MovieElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the movie dictionary object. |
| [EntryAspect](2-properties/02-entryaspect.md) | Represents the "Aspect" entry of the movie dictionary object. |
| [EntryRotate](2-properties/03-entryrotate.md) | Represents the "Rotate" entry of the movie dictionary object. |
| [EntryPoster](2-properties/04-entryposter.md) | Represents the "Poster" entry of the movie dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
