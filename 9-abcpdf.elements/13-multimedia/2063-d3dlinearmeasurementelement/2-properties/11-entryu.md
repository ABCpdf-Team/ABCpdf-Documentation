# EntryU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "U" entry of the 3d linear dimension measurement object. |

## Notes

Represents the "U" entry of the 3d linear dimension measurement object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39b, page 63.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=63)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 327, page 685.](https://www.iso.org/standard/63534.html)

The U entry references the 3D units dictionary for this measurement, specifying the unit name and scale factor used to convert the model-space value in V to displayed units.
