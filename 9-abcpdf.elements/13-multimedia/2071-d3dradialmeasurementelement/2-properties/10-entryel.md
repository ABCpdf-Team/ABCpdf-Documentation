# EntryEL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "EL" entry of the 3d radial dimension measurement object. |

## Notes

Represents the "EL" entry of the 3d radial dimension measurement object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 60 if no value has been provided.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39e, page 71.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=71)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 330, page 692.](https://www.iso.org/standard/63534.html)

The EL entry holds ellipse parameters as an array when the circular feature appears as an ellipse from the current viewpoint, providing the data needed to draw the elliptical arc in the 2D annotation appearance.
