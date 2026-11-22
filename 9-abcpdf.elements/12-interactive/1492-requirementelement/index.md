# RequirementElement Class

This class represents the requirement dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 264, page 484.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=492)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 274, page 603.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RequirementElement`

A requirement dictionary declares that a PDF file requires a conforming reader to support a specific capability before it can be processed correctly.

The S entry names the requirement subtype. The Penalty entry indicates severity: 0 (proceed), 1 (warn), 2 (refuse). The RH array references requirement handler dictionaries providing viewer-specific compliance instructions.

## Methods

| Method | Description |
| --- | --- |
| [RequirementElement](1-methods/01-requirementelement.md) | Create a new RequirementElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the requirement dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the requirement dictionary object. |
| [EntryRH](2-properties/03-entryrh.md) | Represents the "RH" entry of the requirement dictionary object. |
| [EntryV](2-properties/04-entryv.md) | Represents the "V" entry of the requirement dictionary object. |
| [EntryPenalty](2-properties/05-entrypenalty.md) | Represents the "Penalty" entry of the requirement dictionary object. |
| [EntryEncrypt](2-properties/06-entryencrypt.md) | Represents the "Encrypt" entry of the requirement dictionary object. |
| [EntryDigSig](2-properties/07-entrydigsig.md) | Represents the "DigSig" entry of the requirement dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
