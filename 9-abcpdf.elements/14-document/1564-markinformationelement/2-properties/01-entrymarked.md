# EntryMarked Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "Marked" entry of the mark information dictionary object. |

## Notes

Represents the "Marked" entry of the mark information dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 321, page 556.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=564)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 353, page 719.](https://www.iso.org/standard/63534.html)

The Marked entry, when true, declares that all document content is either marked with structure information or tagged as an artifact. A false value or absence means the document is not fully tagged.
