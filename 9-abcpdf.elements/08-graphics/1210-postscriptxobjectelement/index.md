# PostScriptXObjectElement Class

This class represents the postscript xobject dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 88, page 202.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=210)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A PostScript XObject embeds a fragment of PostScript language code within a PDF file. It is intended only for output to PostScript devices and is ignored by conforming PDF readers that do not generate PostScript.

The Level1 entry holds an alternative PostScript fragment for Level 1 PostScript devices. When absent, only the main stream content is available, which may use Level 2 or Level 3 constructs.

PostScript XObjects are a legacy mechanism. PDF 2.0 discourages their use because they are device-specific and cannot be interpreted by PDF-native renderers.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.XObjectElement`](../1209-xobjectelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PostScriptXObjectElement`

## Methods

| Method | Description |
| --- | --- |
| [PostScriptXObjectElement](1-methods/01-postscriptxobjectelement.md) | Create a new PostScriptXObjectElement. |
|  | [inherited methods...](../1209-xobjectelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the postscript xobject dictionary object. |
| [EntryLevel1](2-properties/02-entrylevel1.md) | Represents the "Level1" entry of the postscript xobject dictionary object. |
|  | [inherited properties...](../1209-xobjectelement/index.md) |
