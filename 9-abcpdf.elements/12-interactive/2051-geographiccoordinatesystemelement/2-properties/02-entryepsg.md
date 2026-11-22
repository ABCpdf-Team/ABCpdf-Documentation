# EntryEPSG Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "EPSG" entry of the geographic coordinate system dictionary object. |

## Notes

Represents the "EPSG" entry of the geographic coordinate system dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111b, page 51.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=51)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 270, page 600.](https://www.iso.org/standard/63534.html)

The EPSG code is a numeric identifier from the EPSG Geodetic Parameter Dataset uniquely identifying the coordinate reference system. Common codes include 4326 for WGS 84.
