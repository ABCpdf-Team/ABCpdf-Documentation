# D3DCommentNoteElement Class

This class represents the 3D comment note. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 331, page 694.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39f, page 74.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=74)

A 3D comment note dictionary defines a text annotation attached to a point in 3D model space. Comment notes allow reviewers to attach textual remarks to specific locations on the model.

The A1 entry holds the anchor point in model coordinates. The N1 entry holds the surface normal at the anchor point. The TP entry specifies the position of the note text label.

The TB entry, when true, causes the note to display in a text bubble. The TS entry holds the note text content. The C entry holds the note colour. The UT entry controls unit display. The S entry specifies the scale.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.D3DMeasurementElement`](../2062-d3dmeasurementelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.D3DCommentNoteElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DCommentNoteElement](1-methods/01-d3dcommentnoteelement.md) | Create a new D3DCommentNoteElement. |
|  | [inherited methods...](../2062-d3dmeasurementelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryA1](2-properties/01-entrya1.md) | Represents the "A1" entry of the 3d comment note object. |
| [EntryN1](2-properties/02-entryn1.md) | Represents the "N1" entry of the 3d comment note object. |
| [EntryTP](2-properties/03-entrytp.md) | Represents the "TP" entry of the 3d comment note object. |
| [EntryTB](2-properties/04-entrytb.md) | Represents the "TB" entry of the 3d comment note object. |
| [EntryTS](2-properties/05-entryts.md) | Represents the "TS" entry of the 3d comment note object. |
| [EntryC](2-properties/06-entryc.md) | Represents the "C" entry of the 3d comment note object. |
| [EntryUT](2-properties/07-entryut.md) | Represents the "UT" entry of the 3d comment note object. |
| [EntryS](2-properties/08-entrys.md) | Represents the "S" entry of the 3d comment note object. |
|  | [inherited properties...](../2062-d3dmeasurementelement/index.md) |
