# EntryHalftoneName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "HalftoneName" entry of the type 5 halftone dictionary object. |

## Notes

Represents the "HalftoneName" entry of the type 5 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 134, page 315.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=323)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 132, page 377.](https://www.iso.org/standard/63534.html)

Like all HalftoneName values, this is raw byte data rather than a text string. It names the composite halftone as a whole rather than any individual colorant screen.

Each sub-dictionary in the type 5 structure may carry its own HalftoneName identifying that particular colorant screen separately from the composite name.
