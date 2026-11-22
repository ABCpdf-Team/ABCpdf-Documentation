# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "R" entry of the 3d radial dimension measurement object. |

## Notes

Represents the "R" entry of the 3d radial dimension measurement object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39e, page 71.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=71)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 330, page 693.](https://www.iso.org/standard/63534.html)

The R entry holds the computed radius value in model units, derived from the anchor points.
