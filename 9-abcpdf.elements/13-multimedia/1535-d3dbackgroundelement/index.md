# D3DBackgroundElement Class

This class represents the 3D background dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 306, page 527.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=535)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 317, page 659.](https://www.iso.org/standard/63534.html)

A 3D background dictionary specifies the background appearance behind a 3D model in a viewport. The background may be a solid colour, a transparent region, or an image.

The CS entry names the colour space used to specify the background colour: SC for solid colour, or No for no colour (transparent). The C entry holds the colour value as an array of components in the named colour space.

The EA entry, when true, causes the background to be rendered as the environment for the 3D scene, affecting reflections and ambient lighting in the model.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DBackgroundElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DBackgroundElement](1-methods/01-d3dbackgroundelement.md) | Create a new D3DBackgroundElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the 3d background dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the 3d background dictionary object. |
| [EntryCS](2-properties/03-entrycs.md) | Represents the "CS" entry of the 3d background dictionary object. |
| [EntryC](2-properties/04-entryc.md) | Represents the "C" entry of the 3d background dictionary object. |
| [EntryEA](2-properties/05-entryea.md) | Represents the "EA" entry of the 3d background dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
