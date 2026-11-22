# EntryMeasure Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MeasureElement`](../../../12-interactive/1488-measureelement/index.md) | null | No | Represents the "Measure" entry of the image dictionary object. |

## Notes

Represents the "Measure" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [MeasureElement](../../../12-interactive/1488-measureelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 206.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=214)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 258.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

The Measure dictionary attaches real-world measurement information to the image, mapping image coordinates to physical units such as metres or inches. This is used in geospatial and engineering workflows where precise coordinate referencing is required.
