# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "R" entry of the structure element dictionary object. |

## Notes

Represents the "R" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.](https://www.iso.org/standard/63534.html)

The R entry holds an integer representing the PDF revision number at which this element was last modified, tracking which revision of an incrementally updated document introduced or changed it.
