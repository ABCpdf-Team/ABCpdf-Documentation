# FloatingWindowParametersElement Class

This class represents the floating window parameters dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 284, page 500.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=508)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 295, page 626.](https://www.iso.org/standard/63534.html)

A floating window parameters dictionary specifies the size, position, and behaviour of a floating media playback window. A floating window is one that appears independently of the annotation rectangle and can be moved and resized by the user.

The D entry holds the initial size of the floating window as a two-element array of width and height in pixels. The RT entry controls how the window is positioned: centred in a screen area, near the annotation, or at a position given by the P entry.

The O entry specifies the window offscreen behaviour: whether the window may be partially or fully offscreen or must be kept fully visible. The T entry controls whether the window has a title bar. The UC entry, when true, allows the user to close the floating window.

The R entry specifies whether the window should be resizable by the user. The TT entry holds the title bar text as a PDF text string array with optional language entries.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FloatingWindowParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [FloatingWindowParametersElement](1-methods/01-floatingwindowparameterselement.md) | Create a new FloatingWindowParametersElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the floating window parameters dictionary object. |
| [EntryD](2-properties/02-entryd.md) | Represents the "D" entry of the floating window parameters dictionary object. |
| [EntryRT](2-properties/03-entryrt.md) | Represents the "RT" entry of the floating window parameters dictionary object. |
| [EntryP](2-properties/04-entryp.md) | Represents the "P" entry of the floating window parameters dictionary object. |
| [EntryO](2-properties/05-entryo.md) | Represents the "O" entry of the floating window parameters dictionary object. |
| [EntryT](2-properties/06-entryt.md) | Represents the "T" entry of the floating window parameters dictionary object. |
| [EntryUC](2-properties/07-entryuc.md) | Represents the "UC" entry of the floating window parameters dictionary object. |
| [EntryR](2-properties/08-entryr.md) | Represents the "R" entry of the floating window parameters dictionary object. |
| [EntryTT](2-properties/09-entrytt.md) | Represents the "TT" entry of the floating window parameters dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
