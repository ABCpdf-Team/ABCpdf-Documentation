# EntryMeasure Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MeasureElement`](../../../12-interactive/1488-measureelement/index.md) | null | No | Represents the "Measure" entry of the form XObject dictionary object. |

## Notes

Represents the "Measure" entry of the form XObject dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [MeasureElement](../../../12-interactive/1488-measureelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 95, page 218.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=226)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.45, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 93, page 270.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 363, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 399, page 812.](https://www.iso.org/standard/63534.html)

The Measure dictionary attaches real-world measurement data to the form, mapping form coordinates to physical units. This supports geospatial and engineering workflows where precise spatial referencing of form content is required.
