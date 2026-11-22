# EntryPtData Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PointDataElement`](../../2053-pointdataelement/index.md) | null | No | Represents the "PtData" entry of the viewport dictionary object. |

## Notes

Represents the "PtData" entry of the viewport dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [PointDataElement](../../2053-pointdataelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 260, page 479.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=487)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.109, page 48.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=48)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 265, page 592.](https://www.iso.org/standard/63534.html)

The point data dictionary holds arrays of georeferenced point data associated with this viewport, used in geospatial PDF workflows to embed named geographic point sets.
