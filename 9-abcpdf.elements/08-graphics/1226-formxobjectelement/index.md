# FormXObjectElement Class

This class represents the form XObject dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 95, page 218.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=226)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 93, page 269.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.45, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 363, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 399, page 812.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Form XObject is a self-contained PDF content stream that can be painted multiple times by reference. It encapsulates its own resource dictionary, graphics state, and coordinate system, isolating it from the surrounding content.

The BBox entry clips the form's content to a rectangle in the form's own coordinate system. Content outside this box is not painted. The box also defines the extent used when compositing the form as a transparency group.

The Matrix entry maps the form's coordinate system to the coordinate system of the context in which it is invoked. This allows scaling, rotation, and translation of the form content without altering the content stream itself.

The Resources entry holds all PDF objects needed by the form's content stream. These are local to the form and may differ from the resources of the enclosing page or form.

The Group entry, if present, designates the form as a transparency group. The group type determines how the form's objects composite internally before the result is composited into the parent context.

The Ref entry provides a reference to an external page that the form represents. This is used in the reference XObject mechanism to incorporate pages from other documents with deferred resolution.

PieceInfo and LastModified support application-level private data and incremental update tracking. They do not affect rendering.

StructParent and StructParents link the form or its constituent objects into the document's structure tree for accessibility and tagged PDF purposes.

The OPI entry holds an Open Prepress Interface dictionary for workflows that use low-resolution proxy images in the PDF and replace them with high-resolution originals at output time.

The OC entry associates the form with an optional content group. When the group is off, the form is not painted. This allows form visibility to be toggled by the viewer's optional content configuration.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.XObjectElement`](../1209-xobjectelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.FormXObjectElement`  
`             ` [`WebSupergoo.ABCpdf14.Elements.TrapNetworkAppearanceStreamElement`](../../14-document/1646-trapnetworkappearancestreamelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [FormXObjectElement](1-methods/01-formxobjectelement.md) | Create a new FormXObjectElement. |
|  | [inherited methods...](../1209-xobjectelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the form XObject dictionary object. |
| [EntryFormType](2-properties/02-entryformtype.md) | Represents the "FormType" entry of the form XObject dictionary object. |
| [EntryBBox](2-properties/03-entrybbox.md) | Represents the "BBox" entry of the form XObject dictionary object. |
| [EntryMatrix](2-properties/04-entrymatrix.md) | Represents the "Matrix" entry of the form XObject dictionary object. |
| [EntryResources](2-properties/05-entryresources.md) | Represents the "Resources" entry of the form XObject dictionary object. |
| [EntryGroup](2-properties/06-entrygroup.md) | Represents the "Group" entry of the form XObject dictionary object. |
| [EntryRef](2-properties/07-entryref.md) | Represents the "Ref" entry of the form XObject dictionary object. |
| [EntryPieceInfo](2-properties/08-entrypieceinfo.md) | Represents the "PieceInfo" entry of the form XObject dictionary object. |
| [EntryLastModified](2-properties/09-entrylastmodified.md) | Represents the "LastModified" entry of the form XObject dictionary object. |
| [EntryStructParent](2-properties/10-entrystructparent.md) | Represents the "StructParent" entry of the form XObject dictionary object. |
| [EntryStructParents](2-properties/11-entrystructparents.md) | Represents the "StructParents" entry of the form XObject dictionary object. |
| [EntryOPI](2-properties/12-entryopi.md) | Represents the "OPI" entry of the form XObject dictionary object. |
| [EntryOC](2-properties/13-entryoc.md) | Represents the "OC" entry of the form XObject dictionary object. |
| [EntryName](2-properties/14-entryname.md) | Represents the "Name" entry of the form XObject dictionary object. |
| [EntryMeasure](2-properties/15-entrymeasure.md) | Represents the "Measure" entry of the form XObject dictionary object. |
| [EntryPtData](2-properties/16-entryptdata.md) | Represents the "PtData" entry of the form XObject dictionary object. |
| [EntryMarkStyle](2-properties/17-entrymarkstyle.md) | Represents the "MarkStyle" entry of the form XObject dictionary object. |
| [EntryColorants](2-properties/18-entrycolorants.md) | Represents the "Colorants" entry of the form XObject dictionary object. |
|  | [inherited properties...](../1209-xobjectelement/index.md) |
