# EntryVP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`ViewportElement`](../../../12-interactive/1487-viewportelement/index.md)`>` | null | No | Represents the "VP" entry of the page object object. |

## Notes

Represents the "VP" entry of the page object object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains an array which contains [ViewportElements](../../../12-interactive/1487-viewportelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 79.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=87)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 106.](https://www.iso.org/standard/63534.html)

The VP entry holds an array of viewport dictionaries defining rectangular regions of the page with associated measurement information. Viewports support geospatial and engineering workflows where page regions map to real-world coordinates.
