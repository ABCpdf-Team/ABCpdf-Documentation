# RenditionActionElement Class

This class represents the rendition action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 214, page 428.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=436)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 218, page 520.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.RenditionActionElement`

A rendition action manages media playback associated with a screen annotation. The OP entry selects the operation. The R entry references the rendition, AN references the screen annotation, and JS executes JavaScript for fine-grained media control.

## Methods

| Method | Description |
| --- | --- |
| [RenditionActionElement](1-methods/01-renditionactionelement.md) | Create a new RenditionActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the rendition action object. |
| [EntryAN](2-properties/02-entryan.md) | Represents the "AN" entry of the rendition action object. |
| [EntryOP](2-properties/03-entryop.md) | Represents the "OP" entry of the rendition action object. |
| [EntryJS](2-properties/04-entryjs.md) | Represents the "JS" entry of the rendition action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
