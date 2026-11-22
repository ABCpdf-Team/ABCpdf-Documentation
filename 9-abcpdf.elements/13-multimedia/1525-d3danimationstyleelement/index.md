# D3DAnimationStyleElement Class

This class represents the 3D animation style dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 301, page 517.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=525)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 312, page 646.](https://www.iso.org/standard/63534.html)

A 3D animation style dictionary controls how animations within a 3D model are played when the model is instantiated. It specifies the playback style and the time multiplier for animations.

The PC entry names the play count: how many times the animation plays. A value of 0 means the animation loops indefinitely. The TM entry gives a time multiplier applied to the animation playback speed, where 1.0 is normal speed.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DAnimationStyleElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DAnimationStyleElement](1-methods/01-d3danimationstyleelement.md) | Create a new D3DAnimationStyleElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d animation style dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the 3d animation style dictionary object. |
| [EntryPC](2-properties/03-entrypc.md) | Represents the "PC" entry of the 3d animation style dictionary object. |
| [EntryTM](2-properties/04-entrytm.md) | Represents the "TM" entry of the 3d animation style dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
