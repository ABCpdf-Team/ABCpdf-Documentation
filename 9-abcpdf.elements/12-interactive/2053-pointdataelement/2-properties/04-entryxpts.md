# EntryXPTS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "XPTS" entry of the point data dictionary object. |

## Notes

Represents the "XPTS" entry of the point data dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111d, page 53.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=53)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 272, page 602.](https://www.iso.org/standard/63534.html)

The XPTS stream holds the actual point data in a compact binary or encoded format. Each record contains one value per column named in the Names array.
