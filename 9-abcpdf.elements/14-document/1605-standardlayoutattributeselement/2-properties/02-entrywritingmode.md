# EntryWritingMode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "WritingMode" entry of the standard layout attributes object. |

## Notes

Represents the "WritingMode" entry of the standard layout attributes object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "LrTb" if no value has been provided.

This item may take one of the following valid values:.

- LrTb
- RlTb
- TbRl

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 343, page 598.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=606)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 378, page 771.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 344, page 600.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=608)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 379, page 774.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 345, page 604.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=612)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 380, page 778.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 346, page 608.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=616)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 381, page 782.](https://www.iso.org/standard/63534.html)

The WritingMode entry specifies text flow direction. LrTb is left-to-right top-to-bottom for Western scripts. RlTb is right-to-left for Arabic and Hebrew. TbRl is top-to-bottom for vertical East Asian scripts.
