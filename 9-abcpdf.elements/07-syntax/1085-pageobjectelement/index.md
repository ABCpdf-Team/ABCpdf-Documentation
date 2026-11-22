# PageObjectElement Class

This class represents the page object. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 77.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=85)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 103.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

This class is always an indirect object because AnnotationElement.EntryP, BeadElement.EntryP, DpartElement.EntryEnd, DpartElement.EntryStart, MarkedContentReferenceElement.EntryPg, ObjectReferenceElement.EntryPg, PageTreeNodeElement.EntryKids, SeparationElement.EntryPages, StructureElementElement.EntryPg and StructureTreeRootElement.EntryParentTree require it to be so.

A page object defines all properties of a single page in a PDF document. It is a leaf node in the page tree and is referenced from its parent page tree node's Kids array.

The MediaBox defines the full extent of the page's physical medium. CropBox, BleedBox, TrimBox, and ArtBox define successively more specific regions within the MediaBox for different production purposes.

The Resources entry holds the resource dictionary for this page, listing all fonts, images, color spaces, patterns, and other objects used in the page's content streams. Resources may also be inherited from ancestor page tree nodes.

The Contents entry references the page's content stream or an array of content streams. Multiple content streams are treated as if they were concatenated into one. The streams contain the PDF operators that describe the page's visual appearance.

The Rotate entry specifies the clockwise rotation in degrees applied to the page when displayed or printed. Valid values are 0, 90, 180, and 270.

The Annots entry holds an array of annotation dictionaries attached to the page. Annotations include markup, links, form fields, and media.

The Group entry designates the page as a transparency group, controlling how the page's content composites when the page is used as a transparency group XObject.

The UserUnit entry, introduced in PDF 1.6, specifies the size of one user space unit in points. The default is 1/72 inch. A value other than 1 scales the entire page coordinate system.

The AF entry holds associated files linked to this page for PDF/A-3 and PDF 2.0 workflows. The OutputIntents entry provides output intent information specific to this page, overriding any document-level output intents.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PageObjectElement`

## Methods

| Method | Description |
| --- | --- |
| [PageObjectElement](1-methods/01-pageobjectelement.md) | Create a new PageObjectElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the page object object. |
| [EntryParent](2-properties/02-entryparent.md) | Represents the "Parent" entry of the page object object. |
| [EntryLastModified](2-properties/03-entrylastmodified.md) | Represents the "LastModified" entry of the page object object. |
| [EntryResources](2-properties/04-entryresources.md) | Represents the "Resources" entry of the page object object. |
| [EntryMediaBox](2-properties/05-entrymediabox.md) | Represents the "MediaBox" entry of the page object object. |
| [EntryCropBox](2-properties/06-entrycropbox.md) | Represents the "CropBox" entry of the page object object. |
| [EntryBleedBox](2-properties/07-entrybleedbox.md) | Represents the "BleedBox" entry of the page object object. |
| [EntryTrimBox](2-properties/08-entrytrimbox.md) | Represents the "TrimBox" entry of the page object object. |
| [EntryArtBox](2-properties/09-entryartbox.md) | Represents the "ArtBox" entry of the page object object. |
| [EntryBoxColorInfo](2-properties/10-entryboxcolorinfo.md) | Represents the "BoxColorInfo" entry of the page object object. |
| [EntryContents](2-properties/11-entrycontents.md) | Represents the "Contents" entry of the page object object. |
| [EntryRotate](2-properties/12-entryrotate.md) | Represents the "Rotate" entry of the page object object. |
| [EntryGroup](2-properties/13-entrygroup.md) | Represents the "Group" entry of the page object object. |
| [EntryThumb](2-properties/14-entrythumb.md) | Represents the "Thumb" entry of the page object object. |
| [EntryB](2-properties/15-entryb.md) | Represents the "B" entry of the page object object. |
| [EntryDur](2-properties/16-entrydur.md) | Represents the "Dur" entry of the page object object. |
| [EntryTrans](2-properties/17-entrytrans.md) | Represents the "Trans" entry of the page object object. |
| [EntryAnnots](2-properties/18-entryannots.md) | Represents the "Annots" entry of the page object object. |
| [EntryAA](2-properties/19-entryaa.md) | Represents the "AA" entry of the page object object. |
| [EntryPieceInfo](2-properties/20-entrypieceinfo.md) | Represents the "PieceInfo" entry of the page object object. |
| [EntryStructParents](2-properties/21-entrystructparents.md) | Represents the "StructParents" entry of the page object object. |
| [EntryID](2-properties/22-entryid.md) | Represents the "ID" entry of the page object object. |
| [EntryPZ](2-properties/23-entrypz.md) | Represents the "PZ" entry of the page object object. |
| [EntrySeparationInfo](2-properties/24-entryseparationinfo.md) | Represents the "SeparationInfo" entry of the page object object. |
| [EntryTabs](2-properties/25-entrytabs.md) | Represents the "Tabs" entry of the page object object. |
| [EntryTemplateInstantiated](2-properties/26-entrytemplateinstantiated.md) | Represents the "TemplateInstantiated" entry of the page object object. |
| [EntryPresSteps](2-properties/27-entrypressteps.md) | Represents the "PresSteps" entry of the page object object. |
| [EntryUserUnit](2-properties/28-entryuserunit.md) | Represents the "UserUnit" entry of the page object object. |
| [EntryVP](2-properties/29-entryvp.md) | Represents the "VP" entry of the page object object. |
| [EntryAF](2-properties/30-entryaf.md) | Represents the "AF" entry of the page object object. |
| [EntryOutputIntents](2-properties/31-entryoutputintents.md) | Represents the "OutputIntents" entry of the page object object. |
| [EntryDPart](2-properties/32-entrydpart.md) | Represents the "DPart" entry of the page object object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
