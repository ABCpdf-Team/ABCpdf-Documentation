# OutputIntentElement Class

This class represents the output intent dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 365, page 633.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=641)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 401, page 814.](https://www.iso.org/standard/63534.html)

An output intent dictionary describes the intended output condition for a PDF document or page, providing information needed for color management when printing or displaying.

The S entry names the output intent subtype: GTS_PDFX for PDF/X, GTS_PDFA1 for PDF/A, and ISO_PDFE1 for PDF/E. Other values support custom conditions.

The OutputConditionIdentifier entry names the output condition. For registered conditions, the RegistryName entry gives the URL of the registry. For custom conditions, any identifying string may be used.

The DestOutputProfile entry references an embedded ICC profile stream characterising the target output device. The DestOutputProfileRef entry, added in PDF 2.0, references a profile defined elsewhere in the document, allowing multiple output intents to share one profile.

The MixingHints and SpectralData entries carry additional color characterization data for advanced workflows.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OutputIntentElement`

## Methods

| Method | Description |
| --- | --- |
| [OutputIntentElement](1-methods/01-outputintentelement.md) | Create a new OutputIntentElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the output intent dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the output intent dictionary object. |
| [EntryOutputCondition](2-properties/03-entryoutputcondition.md) | Represents the "OutputCondition" entry of the output intent dictionary object. |
| [EntryOutputConditionIdentifier](2-properties/04-entryoutputconditionidentifier.md) | Represents the "OutputConditionIdentifier" entry of the output intent dictionary object. |
| [EntryRegistryName](2-properties/05-entryregistryname.md) | Represents the "RegistryName" entry of the output intent dictionary object. |
| [EntryInfo](2-properties/06-entryinfo.md) | Represents the "Info" entry of the output intent dictionary object. |
| [EntryDestOutputProfile](2-properties/07-entrydestoutputprofile.md) | Represents the "DestOutputProfile" entry of the output intent dictionary object. |
| [EntryDestOutputProfileRef](2-properties/08-entrydestoutputprofileref.md) | Represents the "DestOutputProfileRef" entry of the output intent dictionary object. |
| [EntryMixingHints](2-properties/09-entrymixinghints.md) | Represents the "MixingHints" entry of the output intent dictionary object. |
| [EntrySpectralData](2-properties/10-entryspectraldata.md) | Represents the "SpectralData" entry of the output intent dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
