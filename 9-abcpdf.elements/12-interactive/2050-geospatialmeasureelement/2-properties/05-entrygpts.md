# EntryGPTS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "GPTS" entry of the geospatial measure dictionary object. |

## Notes

Represents the "GPTS" entry of the geospatial measure dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111a, page 50.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=50)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 269, page 599.](https://www.iso.org/standard/63534.html)

The geographic points array holds the geographic coordinates of the control points used to register the page to the earth. Each control point corresponds to one entry in the LPTS array.
