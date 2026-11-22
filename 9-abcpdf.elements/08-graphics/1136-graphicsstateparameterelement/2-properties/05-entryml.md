# EntryML Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "ML" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "ML" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=136)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The miter limit sets a threshold on the ratio of miter length to line width for miter joins. When a join's miter ratio would exceed this limit, the join is converted to a bevel.

A miter limit of 1.0 effectively converts all miter joins to bevels. The default value of 10 permits miters at angles down to approximately 11.5 degrees before switching to a bevel.
