# EntryOutputIntents Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`OutputIntentElement`](../../../14-document/1641-outputintentelement/index.md)`>` | null | No | Represents the "OutputIntents" entry of the catalog dictionary object. |

## Notes

Represents the "OutputIntents" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an array which contains [OutputIntentElements](../../../14-document/1641-outputintentelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 75.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=83)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 100.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The OutputIntents entry holds an array of output intent dictionaries that describe the intended output conditions for the document. Output intents are used in PDF/X and other standards to specify the target print or display condition.
