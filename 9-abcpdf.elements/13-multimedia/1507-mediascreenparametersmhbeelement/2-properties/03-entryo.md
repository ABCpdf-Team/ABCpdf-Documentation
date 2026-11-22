# EntryO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "O" entry of the media screen parameters mh/be dictionary object. |

## Notes

Represents the "O" entry of the media screen parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 1.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 283, page 499.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=507)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 294, page 625.](https://www.iso.org/standard/63534.html)

The O entry holds the opacity of the window background as a real number from 0.0 (fully transparent) to 1.0 (fully opaque). Partial opacity allows page content to show through.
