# EntryGCS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ProjectedCoordinateSystemElement`](../../2052-projectedcoordinatesystemelement/index.md) | null | No | Represents the "GCS" entry of the geospatial measure dictionary object. |

## Notes

Represents the "GCS" entry of the geospatial measure dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [ProjectedCoordinateSystemElement](../../2052-projectedcoordinatesystemelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.111a, page 50.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=50)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 269, page 598.](https://www.iso.org/standard/63534.html)

The geographic coordinate system dictionary defines the datum and reference system for the geographic coordinates in GPTS, typically describing latitude and longitude in a named ellipsoid.
