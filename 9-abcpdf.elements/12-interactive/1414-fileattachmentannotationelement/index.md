# FileAttachmentAnnotationElement Class

This class represents the file attachment annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 184, page 406.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=414)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 187, page 492.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.FileAttachmentAnnotationElement`

A file attachment annotation embeds a file at a specific page location represented by an icon. The FS entry references the embedded file specification. The Name entry selects the icon style.

## Methods

| Method | Description |
| --- | --- |
| [FileAttachmentAnnotationElement](1-methods/01-fileattachmentannotationelement.md) | Create a new FileAttachmentAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFS](2-properties/01-entryfs.md) | Represents the "FS" entry of the file attachment annotation object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the file attachment annotation object. |
| [EntryIT](2-properties/03-entryit.md) | Represents the "IT" entry of the file attachment annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
