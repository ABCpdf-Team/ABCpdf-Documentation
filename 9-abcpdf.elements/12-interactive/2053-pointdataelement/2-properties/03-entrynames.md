# EntryNames Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Names" entry of the point data dictionary object. |

## Notes

Represents the "Names" entry of the point data dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- LAT
- LON
- ALT

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111d, page 53.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=53)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 272, page 602.](https://www.iso.org/standard/63534.html)

The Names array holds text strings labelling the data columns stored in XPTS. Each name corresponds to one element in each point record.
