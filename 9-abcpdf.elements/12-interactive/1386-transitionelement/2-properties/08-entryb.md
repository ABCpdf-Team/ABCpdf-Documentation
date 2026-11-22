# EntryB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "B" entry of the transition dictionary object. |

## Notes

Represents the "B" entry of the transition dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 162, page 379.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=387)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 164, page 460.](https://www.iso.org/standard/63534.html)

The opaque flag applies to the Fly transition. When true the area around the flying page is filled with the current page content; when false it is transparent.
