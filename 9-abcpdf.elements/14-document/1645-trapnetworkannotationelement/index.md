# TrapNetworkAnnotationElement Class

This class represents the trap network annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 366, page 637.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=645)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 403, page 820.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

A trap network annotation records the trapping applied to a PDF page. Trapping adds small overlaps between adjacent color areas to prevent white gaps caused by misregistration during printing.

The annotation appearance stream contains trap regions as filled paths. It lies on top of the page content and replaces the untrapped content when the trapped version is used for output.

The LastModified entry records when the trap network was last generated. Comparing this with the page modification date indicates whether the traps are still current.

The Version entry identifies the trap network version. The AnnotStates entry records the state of all annotations at trap time, as annotation appearances may affect the trapping. The FontFauxing entry lists fonts that had synthetic bold or italic applied.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../../12-interactive/1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.TrapNetworkAnnotationElement`

## Methods

| Method | Description |
| --- | --- |
| [TrapNetworkAnnotationElement](1-methods/01-trapnetworkannotationelement.md) | Create a new TrapNetworkAnnotationElement. |
|  | [inherited methods...](../../12-interactive/1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryLastModified](2-properties/01-entrylastmodified.md) | Represents the "LastModified" entry of the trap network annotation object. |
| [EntryVersion](2-properties/02-entryversion.md) | Represents the "Version" entry of the trap network annotation object. |
| [EntryAnnotStates](2-properties/03-entryannotstates.md) | Represents the "AnnotStates" entry of the trap network annotation object. |
| [EntryFontFauxing](2-properties/04-entryfontfauxing.md) | Represents the "FontFauxing" entry of the trap network annotation object. |
|  | [inherited properties...](../../12-interactive/1391-annotationelement/index.md) |
