# WidgetAnnotationElement Class

This class represents the widget annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 188, page 408.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=416)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 191, page 495.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.39, page 39.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=39)

This class is always an indirect object because FieldElement.EntryKids requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.WidgetAnnotationElement`

A widget annotation is the visual representation of an interactive form field on a page. A single field can have multiple widget annotations, one for each page location where the field appears.

The FieldElement entry provides access to the field dictionary. The H entry selects the highlighting mode. The MK entry holds the appearance characteristics dictionary defining border colour, background colour, and icon content.

The PMD entry carries private data for use by the creating application, allowing custom information to survive round-tripping.

## Methods

| Method | Description |
| --- | --- |
| [WidgetAnnotationElement](1-methods/01-widgetannotationelement.md) | Create a new WidgetAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [FieldElement](2-properties/01-fieldelement.md) | Any FieldElement associated with this Widget Annotation. |
| [EntryH](2-properties/02-entryh.md) | Represents the "H" entry of the widget annotation object. |
| [EntryMK](2-properties/03-entrymk.md) | Represents the "MK" entry of the widget annotation object. |
| [EntryA](2-properties/04-entrya.md) | Represents the "A" entry of the widget annotation object. |
| [EntryAA](2-properties/05-entryaa.md) | Represents the "AA" entry of the widget annotation object. |
| [EntryBS](2-properties/06-entrybs.md) | Represents the "BS" entry of the widget annotation object. |
| [EntryParent](2-properties/07-entryparent.md) | Represents the "Parent" entry of the widget annotation object. |
| [EntryPMD](2-properties/08-entrypmd.md) | Represents the "PMD" entry of the widget annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
