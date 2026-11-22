# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "F" entry of the outline item dictionary object. |

## Notes

Represents the "F" entry of the outline item dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 153, page 369.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=377)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 151, page 443.](https://www.iso.org/standard/63534.html)

The flags integer controls visual style. Bit 1 selects italic and bit 2 selects bold; both may be set simultaneously for bold italic rendering.
