# SoundAnnotationElement Class

This class represents the sound annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 185, page 407.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=415)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 188, page 493.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.SoundAnnotationElement`

A sound annotation attaches an audio clip to a page location represented by an icon. Activating the annotation causes the viewer to play the sound. Sound annotations are deprecated in PDF 2.0.

The Sound entry references a sound stream object encoding the audio data along with sample rate, channel count, and encoding parameters.

## Methods

| Method | Description |
| --- | --- |
| [SoundAnnotationElement](1-methods/01-soundannotationelement.md) | Create a new SoundAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySound](2-properties/01-entrysound.md) | Represents the "Sound" entry of the sound annotation object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the sound annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
