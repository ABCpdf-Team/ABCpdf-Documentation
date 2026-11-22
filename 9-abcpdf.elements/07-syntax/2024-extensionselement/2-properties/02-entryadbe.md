# EntryADBE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DeveloperExtensionsElement`](../../1116-developerextensionselement/index.md) | null | No | Represents the "ADBE" entry of the extensions dictionary object. |

## Notes

Represents the "ADBE" entry of the extensions dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [DeveloperExtensionsElement](../../1116-developerextensionselement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25a, page 24.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=24)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 48, page 140.](https://www.iso.org/standard/63534.html)

The ADBE entry holds the developer extensions dictionary for Adobe extensions to PDF 1.7. It identifies which Adobe extension level the document uses, allowing readers to determine whether they support the required Adobe-specific features.

Adobe extension levels were introduced to allow features developed after the publication of ISO 32000-1:2008 to be used in PDF 1.7 documents. Most of the features in these extension levels were later standardised in ISO 32000-2:2017 (PDF 2.0).
