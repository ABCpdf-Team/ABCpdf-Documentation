# EntryD1 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "D1" entry of the 3d perpendicular dimension measurement object. |

## Notes

Represents the "D1" entry of the 3d perpendicular dimension measurement object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39c, page 65.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=65)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 328, page 687.](https://www.iso.org/standard/63534.html)

The D1 entry holds a three-element array giving the direction vector of the reference line or plane. The perpendicular distance is measured from the A1 point to this line or plane.
