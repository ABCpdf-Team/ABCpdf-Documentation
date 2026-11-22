# EntryPDU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "PDU" entry of the geospatial measure dictionary object. |

## Notes

Represents the "PDU" entry of the geospatial measure dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- .
- M
- KM
- FT
- USFT
- MI
- NM
- SQM
- HA
- SQKM
- SQFT
- A
- SQMI
- DEG
- GRD
- 400

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111a, page 50.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=50)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 269, page 599.](https://www.iso.org/standard/63534.html)

The preferred display units string names the unit to use for distance and area measurements derived from the geographic coordinate mapping.
