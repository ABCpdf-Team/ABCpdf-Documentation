# D3DViewElement Class

This class represents the 3D view dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 304, page 521.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=529)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 344, page 707.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39, page 57.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=57)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51f, page 93.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=93)

This class is always an indirect object because RichMediaActivationElement.EntryView and RichMediaContentElement.EntryViews require it to be so.

A 3D view dictionary defines a named viewpoint for a 3D model, specifying the camera position, orientation, projection, lighting, rendering style, and other display settings that constitute one way of looking at the model.

The XN entry holds the external name of the view as a text string displayed in the viewer user interface. The IN entry holds the internal name used to reference the view from JavaScript and other annotations.

The C2W entry holds a 12-element array defining the camera-to-world transformation matrix. This matrix specifies the position and orientation of the camera in the model coordinate space.

The U3DPath entry holds the path to a node within the U3D model hierarchy that defines the camera position, as an alternative to C2W. The CO entry gives the camera-to-orbit distance for orbit-style navigation.

The P entry references a projection dictionary specifying the projection type (perspective or orthographic) and the associated parameters such as field of view and clipping planes.

The O entry specifies the orbital navigation centre as a three-element array in world coordinates. The BG entry references a 3D background dictionary specifying the background colour or image.

The RM entry references a render mode dictionary and the LS entry references a lighting scheme dictionary, together controlling the visual appearance of the model surfaces and lighting.

The SA entry holds an array of 3D cross-section dictionaries that define cross-sectional cuts through the model. The NA entry holds an array of 3D node dictionaries that override the visibility and appearance of individual model nodes.

The NR entry, when true, renders node names in the 3D viewport. The MS entry names the projection mode for the view. The MA entry holds an array specifying the model matrix.

The Snapshot entry holds an image XObject providing a 2D snapshot of the view for display when the 3D runtime is unavailable. The Params entry holds additional view parameters as a dictionary.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DViewElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DViewElement](1-methods/01-d3dviewelement.md) | Create a new D3DViewElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d view dictionary object. |
| [EntryXN](2-properties/02-entryxn.md) | Represents the "XN" entry of the 3d view dictionary object. |
| [EntryIN](2-properties/03-entryin.md) | Represents the "IN" entry of the 3d view dictionary object. |
| [EntryC2W](2-properties/04-entryc2w.md) | Represents the "C2W" entry of the 3d view dictionary object. |
| [EntryU3DPath](2-properties/05-entryu3dpath.md) | Represents the "U3DPath" entry of the 3d view dictionary object. |
| [EntryCO](2-properties/06-entryco.md) | Represents the "CO" entry of the 3d view dictionary object. |
| [EntryP](2-properties/07-entryp.md) | Represents the "P" entry of the 3d view dictionary object. |
| [EntryO](2-properties/08-entryo.md) | Represents the "O" entry of the 3d view dictionary object. |
| [EntryBG](2-properties/09-entrybg.md) | Represents the "BG" entry of the 3d view dictionary object. |
| [EntryRM](2-properties/10-entryrm.md) | Represents the "RM" entry of the 3d view dictionary object. |
| [EntryLS](2-properties/11-entryls.md) | Represents the "LS" entry of the 3d view dictionary object. |
| [EntrySA](2-properties/12-entrysa.md) | Represents the "SA" entry of the 3d view dictionary object. |
| [EntryNA](2-properties/13-entryna.md) | Represents the "NA" entry of the 3d view dictionary object. |
| [EntryNR](2-properties/14-entrynr.md) | Represents the "NR" entry of the 3d view dictionary object. |
| [EntryMS](2-properties/15-entryms.md) | Represents the "MS" entry of the 3d view dictionary object. |
| [EntryMA](2-properties/16-entryma.md) | Represents the "MA" entry of the 3d view dictionary object. |
| [EntrySnapshot](2-properties/17-entrysnapshot.md) | Represents the "Snapshot" entry of the 3d view dictionary object. |
| [EntryParams](2-properties/18-entryparams.md) | Represents the "Params" entry of the 3d view dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
