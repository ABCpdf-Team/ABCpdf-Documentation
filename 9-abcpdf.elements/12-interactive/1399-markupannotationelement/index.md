# MarkupAnnotationElement Class

This class represents the markup annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 170, page 391.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=399)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 332, page 695.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.21, page 38.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=38)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`  
`             `[`WebSupergoo.ABCpdf14.Elements.CaretAnnotationElement`](../1412-caretannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.CircleAnnotationElement`](../1409-circleannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.FileAttachmentAnnotationElement`](../1414-fileattachmentannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.FreeTextAnnotationElement`](../1404-freetextannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.InkAnnotationElement`](../1413-inkannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.LineAnnotationElement`](../1406-lineannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.PolygonAnnotationElement`](../1410-polygonannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.PolylineAnnotationElement`](../1410-polylineannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.ProjectionAnnotationElement`](../2039-projectionannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.RubberStampAnnotationElement`](../1413-rubberstampannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.RedactionAnnotationElement`](../1421-redactionannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.SoundAnnotationElement`](../1415-soundannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.SquareAnnotationElement`](../1409-squareannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.TextAnnotationElement`](../1402-textannotationelement/index.md)  
`             `[`WebSupergoo.ABCpdf14.Elements.TextMarkupAnnotationElement`](../1411-textmarkupannotationelement/index.md)

A markup annotation extends the base annotation with entries for author, creation date, subject, reply threading, and pop-up window management, supporting collaborative annotation workflows.

The IRT (in-reply-to) and RT (reply type) entries link this annotation to another it replies to, allowing viewers to group related annotations as a threaded conversation.

The Popup entry references a separate pop-up annotation that displays the text of this annotation's comment. The RC entry supplies rich XHTML content as an alternative to the plain-text Contents entry.

The ExData entry links the annotation to external data such as a 3D node for a projection annotation.

## Methods

| Method | Description |
| --- | --- |
| [MarkupAnnotationElement](1-methods/01-markupannotationelement.md) | Create a new MarkupAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryT](2-properties/01-entryt.md) | Represents the "T" entry of the markup annotation object. |
| [EntryPopup](2-properties/02-entrypopup.md) | Represents the "Popup" entry of the markup annotation object. |
| [EntryRC](2-properties/03-entryrc.md) | Represents the "RC" entry of the markup annotation object. |
| [EntryCreationDate](2-properties/04-entrycreationdate.md) | Represents the "CreationDate" entry of the markup annotation object. |
| [EntryIRT](2-properties/05-entryirt.md) | Represents the "IRT" entry of the markup annotation object. |
| [EntrySubj](2-properties/06-entrysubj.md) | Represents the "Subj" entry of the markup annotation object. |
| [EntryRT](2-properties/07-entryrt.md) | Represents the "RT" entry of the markup annotation object. |
| [EntryIT](2-properties/08-entryit.md) | Represents the "IT" entry of the markup annotation object. |
| [EntryExData](2-properties/09-entryexdata.md) | Represents the "ExData" entry of the markup annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
