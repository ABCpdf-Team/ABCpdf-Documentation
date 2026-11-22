# XObjectElement Class

This class represents the xobject. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 201.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=209)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

An XObject is a self-contained graphical element stored as a PDF stream. Its content can be referenced multiple times within a document, making it an efficient way to reuse images, forms, and PostScript fragments.

The three XObject subtypes are Image (a sampled raster image), Form (a reusable content stream), and PS (a PostScript fragment for compatibility with PostScript output pipelines).

XObjects are named resources stored in the XObject entry of a resource dictionary. A content stream paints an XObject by invoking the Do operator with the resource name.

The AF entry, added in PDF 2.0, attaches one or more associated files to the XObject. These files carry supplementary data related to the XObject's content, such as source data or accessibility alternatives.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.XObjectElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.FormXObjectElement`](../1226-formxobjectelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ImageXObjectElement`](../1214-imagexobjectelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.PostScriptXObjectElement`](../1210-postscriptxobjectelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [XObjectElement](1-methods/01-xobjectelement.md) | Create a new XObjectElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the xobject object. |
| [EntryAF](2-properties/03-entryaf.md) | Represents the "AF" entry of the xobject object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
