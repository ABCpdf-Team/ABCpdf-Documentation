# TrapNetworkAppearanceStreamElement Class

This class represents the trap network appearance stream. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 367, page 638.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=646)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 404, page 821.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

The trap network appearance stream is the content stream of a trap network annotation, containing the filled paths representing trap regions applied to a page.

The PCM entry names the process color model used when the traps were generated. A change to the document color model requires the trap network to be regenerated.

The SeparationColorNames entry lists all spot color separations present on the page when trapping was performed. Any change to the spot color set invalidates the trap network.

The TrapRegions entry holds an array of references to XObjects containing the trap paths. The TrapStyles entry holds an array of trap style dictionaries describing the trapping parameters used.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.XObjectElement`](../../08-graphics/1209-xobjectelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.FormXObjectElement`](../../08-graphics/1226-formxobjectelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.TrapNetworkAppearanceStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [TrapNetworkAppearanceStreamElement](1-methods/01-trapnetworkappearancestreamelement.md) | Create a new TrapNetworkAppearanceStreamElement. |
|  | [inherited methods...](../../08-graphics/1226-formxobjectelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryPCM](2-properties/01-entrypcm.md) | Represents the "PCM" entry of the trap network appearance stream object. |
| [EntrySeparationColorNames](2-properties/02-entryseparationcolornames.md) | Represents the "SeparationColorNames" entry of the trap network appearance stream object. |
| [EntryTrapRegions](2-properties/03-entrytrapregions.md) | Represents the "TrapRegions" entry of the trap network appearance stream object. |
| [EntryTrapStyles](2-properties/04-entrytrapstyles.md) | Represents the "TrapStyles" entry of the trap network appearance stream object. |
|  | [inherited properties...](../../08-graphics/1226-formxobjectelement/index.md) |
