# AnnotationElement Class

This class represents the annotation dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 383.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=391)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 464.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because HideActionElement.EntryT, MarkupAnnotationElement.EntryIRT, PageObjectElement.EntryAnnots and PopUpAnnotationElement.EntryParent require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AnnotationElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.D3DAnnotationElement`](../../13-multimedia/1520-d3dannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.LinkAnnotationElement`](../1402-linkannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MovieAnnotationElement`](../1415-movieannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.PopUpAnnotationElement`](../1414-popupannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.PrintersMarkAnnotationElement`](../../14-document/1640-printersmarkannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.RichMediaAnnotationElement`](../2077-richmediaannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ScreenAnnotationElement`](../1415-screenannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.TrapNetworkAnnotationElement`](../../14-document/1645-trapnetworkannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.WatermarkAnnotationElement`](../1419-watermarkannotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.WidgetAnnotationElement`](../1416-widgetannotationelement/index.md)

An annotation dictionary describes an interactive or graphical object placed at a specific location on a page. Annotations can display content, accept user input, trigger actions, or represent marks and comments.

All annotations share a common set of entries defined in this base class. Specific annotation types extend it with entries appropriate to their function.

The Subtype entry distinguishes the kind of annotation. Viewers that do not recognise a subtype must still render the annotation's appearance stream if one is present.

The F entry is a flags integer whose bits control visibility, printing, locking, and read-only state. The AP entry holds one or more appearance streams that conforming readers must use for rendering.

The AS entry selects which sub-appearance within the AP dictionary is currently active, allowing widget annotations to show different images for different values.

In PDF 2.0 annotations gained additional entries for language, blending mode, and non-stroking opacity, bringing annotation rendering closer to full transparency-model compositing.

## Methods

| Method | Description |
| --- | --- |
| [AnnotationElement](1-methods/01-annotationelement.md) | Create a new AnnotationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the annotation dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the annotation dictionary object. |
| [EntryRect](2-properties/03-entryrect.md) | Represents the "Rect" entry of the annotation dictionary object. |
| [EntryContents](2-properties/04-entrycontents.md) | Represents the "Contents" entry of the annotation dictionary object. |
| [EntryP](2-properties/05-entryp.md) | Represents the "P" entry of the annotation dictionary object. |
| [EntryNM](2-properties/06-entrynm.md) | Represents the "NM" entry of the annotation dictionary object. |
| [EntryM](2-properties/07-entrym.md) | Represents the "M" entry of the annotation dictionary object. |
| [EntryF](2-properties/08-entryf.md) | Represents the "F" entry of the annotation dictionary object. |
| [EntryAP](2-properties/09-entryap.md) | Represents the "AP" entry of the annotation dictionary object. |
| [EntryAS](2-properties/10-entryas.md) | Represents the "AS" entry of the annotation dictionary object. |
| [EntryBorder](2-properties/11-entryborder.md) | Represents the "Border" entry of the annotation dictionary object. |
| [EntryC](2-properties/12-entryc.md) | Represents the "C" entry of the annotation dictionary object. |
| [EntryStructParent](2-properties/13-entrystructparent.md) | Represents the "StructParent" entry of the annotation dictionary object. |
| [EntryOC](2-properties/14-entryoc.md) | Represents the "OC" entry of the annotation dictionary object. |
| [EntryPage](2-properties/15-entrypage.md) | Represents the "Page" entry of the annotation dictionary object. |
| [EntryAF](2-properties/16-entryaf.md) | Represents the "AF" entry of the annotation dictionary object. |
| [Entry_ca](2-properties/17-entry_ca.md) | Represents the "ca" entry of the annotation dictionary object. |
| [EntryCA](2-properties/18-entryca.md) | Represents the "CA" entry of the annotation dictionary object. |
| [EntryBM](2-properties/19-entrybm.md) | Represents the "BM" entry of the annotation dictionary object. |
| [EntryLang](2-properties/20-entrylang.md) | Represents the "Lang" entry of the annotation dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
