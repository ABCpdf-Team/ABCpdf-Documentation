# EntryLineHeight Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "LineHeight" entry of the standard layout attributes object. |

## Notes

Represents the "LineHeight" entry of the standard layout attributes object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A double representing a PDF numeric object.

2\) A string representing a PDF name object.

The PDF specification states that this item assumes a value of "Normal" if no value has been provided.

This item may take one of the following valid values:.

- Normal
- Auto

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 343, page 597.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=605)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 378, page 770.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 344, page 600.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=608)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 379, page 774.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 345, page 604.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=612)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 380, page 778.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 346, page 608.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=616)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 381, page 782.](https://www.iso.org/standard/63534.html)

The LineHeight entry specifies the height of each text line in default user space units, or Normal or Auto. Larger values increase vertical spacing between lines without changing font size.
