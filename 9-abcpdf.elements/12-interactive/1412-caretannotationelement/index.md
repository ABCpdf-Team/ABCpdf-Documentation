# CaretAnnotationElement Class

This class represents the caret annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 180, page 404.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=412)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 183, page 489.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.CaretAnnotationElement`

A caret annotation places a symbol at a point in text to indicate an insertion position. The Sy entry selects the symbol: a plain caret or a paragraph mark. The RD entry insets the drawn area from the annotation's Rect.

## Methods

| Method | Description |
| --- | --- |
| [CaretAnnotationElement](1-methods/01-caretannotationelement.md) | Create a new CaretAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryRD](2-properties/01-entryrd.md) | Represents the "RD" entry of the caret annotation object. |
| [EntrySy](2-properties/02-entrysy.md) | Represents the "Sy" entry of the caret annotation object. |
| [EntryIT](2-properties/03-entryit.md) | Represents the "IT" entry of the caret annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
