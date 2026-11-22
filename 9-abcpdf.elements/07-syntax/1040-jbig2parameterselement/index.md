# Jbig2ParametersElement Class

This class represents the jbig2 parameters. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 12, page 32.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=40)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 12, page 46.](https://www.iso.org/standard/63534.html)

The JBIG2 decode parameters dictionary configures the JBIG2Decode filter, which implements the JBIG2 standard for lossless and lossy compression of bi-level images.

JBIG2 can achieve significantly better compression than CCITT Group 4 for text and halftone images by using symbol dictionaries that allow repeated glyphs to be encoded by reference rather than by value.

The JBIG2Globals entry references a stream containing global segments that are shared across multiple JBIG2 streams in the document. Using a global segment avoids repeating the symbol dictionary in every page stream.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ParameterElement`](../0012-parameterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Jbig2ParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [Jbig2ParametersElement](1-methods/01-jbig2parameterselement.md) | Create a new Jbig2ParametersElement. |
|  | [inherited methods...](../0012-parameterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryJBIG2Globals](2-properties/01-entryjbig2globals.md) | Represents the "JBIG2Globals" entry of the jbig2 parameters object. |
|  | [inherited properties...](../0012-parameterelement/index.md) |
