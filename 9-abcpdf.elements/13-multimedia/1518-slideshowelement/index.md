# SlideshowElement Class

This class represents the slideshow dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 297, page 510.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=518)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 308, page 637.](https://www.iso.org/standard/63534.html)

A slideshow dictionary defines a slideshow presentation attached to a slideshow annotation. It references a resource dictionary containing the images and other media objects used in the presentation.

The Resources entry references a resource dictionary. The StartResource entry names the initial resource in the Resources dictionary to display when the slideshow begins.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SlideshowElement`

## Methods

| Method | Description |
| --- | --- |
| [SlideshowElement](1-methods/01-slideshowelement.md) | Create a new SlideshowElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the slideshow dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the slideshow dictionary object. |
| [EntryResources](2-properties/03-entryresources.md) | Represents the "Resources" entry of the slideshow dictionary object. |
| [EntryStartResource](2-properties/04-entrystartresource.md) | Represents the "StartResource" entry of the slideshow dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
