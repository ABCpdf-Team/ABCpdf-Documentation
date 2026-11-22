# EntryAnnots Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`AnnotationElement`](../../../12-interactive/1391-annotationelement/index.md)`>` | null | No | Represents the "Annots" entry of the page object object. |

## Notes

Represents the "Annots" entry of the page object object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [AnnotationElements](../../../12-interactive/1391-annotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 78.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=86)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 105.](https://www.iso.org/standard/63534.html)

The Annots entry holds an array of annotation dictionaries associated with this page. Annotations include links, markup, stamps, form fields, and media annotations. They are rendered on top of the page content.
