# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "C" entry of the 3d linear dimension measurement object. |

## Notes

Represents the "C" entry of the 3d linear dimension measurement object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39b, page 63.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=63)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 327, page 685.](https://www.iso.org/standard/63534.html)

The C entry holds the measurement colour as a three-element DeviceRGB array, applied to the leader lines, dimension line, and text.
