# EntryO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "O" entry of the 3d node dictionary object. |

## Notes

Represents the "O" entry of the 3d node dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 312, page 538.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=546)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 323, page 671.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 9.47, page 58.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=66)

The O entry holds the opacity of this node as a real number from 0.0 (invisible) to 1.0 (fully opaque), overriding the default node opacity.
