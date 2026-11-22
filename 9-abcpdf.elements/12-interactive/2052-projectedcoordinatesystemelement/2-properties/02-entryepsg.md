# EntryEPSG Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "EPSG" entry of the projected coordinate system dictionary object. |

## Notes

Represents the "EPSG" entry of the projected coordinate system dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111c, page 52.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=52)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 271, page 601.](https://www.iso.org/standard/63534.html)

The EPSG code identifies the projected coordinate reference system. Common codes include 32601 through 32660 for UTM zones in the northern hemisphere.
