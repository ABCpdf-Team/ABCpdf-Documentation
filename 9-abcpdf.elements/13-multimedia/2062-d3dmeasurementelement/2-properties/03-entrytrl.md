# EntryTRL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "TRL" entry of the 3d measurement dictionary object. |

## Notes

Represents the "TRL" entry of the 3d measurement dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39a, page 62.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=62)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 326, page 683.](https://www.iso.org/standard/63534.html)

The TRL entry holds a 12-element transformation matrix defining the coordinate space of the measurement. The matrix maps from measurement coordinates to model coordinates, keeping measurements valid when the model is transformed.
