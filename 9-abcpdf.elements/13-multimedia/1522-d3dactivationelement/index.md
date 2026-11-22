# D3DActivationElement Class

This class represents the 3D activation dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 299, page 514.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=522)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 310, page 642.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.34, page 56.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=56)

A 3D activation dictionary controls how and when a 3D annotation becomes active and interactive. Activation determines when the 3D runtime begins rendering the model and responding to user interaction.

The A entry names the activation event: XA (explicit activation by a 3D JavaScript action), PO (page open), or PV (page visible). The AIS entry names the initial state when activated: I for instantiated (model loaded but not displayed) or L for live (model displayed and interactive).

The D entry names the deactivation event: XD (explicit deactivation), PC (page close), or PI (page invisible). The DIS entry names the state after deactivation: U for uninstantiated or I for instantiated.

The TB entry, when true, causes a toolbar to be displayed when the annotation is active. The NP entry, when true, prevents the 3D content from drawing to the screen after activation.

The Style entry names the rendering style for the activation. The Window entry controls the window type used for display. The Transparent entry, when true, causes the annotation background to be transparent.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.D3DActivationElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DActivationElement](1-methods/01-d3dactivationelement.md) | Create a new D3DActivationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryA](2-properties/01-entrya.md) | Represents the "A" entry of the 3d activation dictionary object. |
| [EntryAIS](2-properties/02-entryais.md) | Represents the "AIS" entry of the 3d activation dictionary object. |
| [EntryD](2-properties/03-entryd.md) | Represents the "D" entry of the 3d activation dictionary object. |
| [EntryDIS](2-properties/04-entrydis.md) | Represents the "DIS" entry of the 3d activation dictionary object. |
| [EntryTB](2-properties/05-entrytb.md) | Represents the "TB" entry of the 3d activation dictionary object. |
| [EntryNP](2-properties/06-entrynp.md) | Represents the "NP" entry of the 3d activation dictionary object. |
| [EntryStyle](2-properties/07-entrystyle.md) | Represents the "Style" entry of the 3d activation dictionary object. |
| [EntryWindow](2-properties/08-entrywindow.md) | Represents the "Window" entry of the 3d activation dictionary object. |
| [EntryTransparent](2-properties/09-entrytransparent.md) | Represents the "Transparent" entry of the 3d activation dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
