# EntryLeading Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "Leading" entry of the font descriptor object. |

## Notes

Represents the "Leading" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=290)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

Leading is the extra vertical space between the bottom of one line's descenders and the top of the next line's ascenders. It is added to the sum of Ascent and the absolute value of Descent to give the total line height.

A value of zero means the lines are set solid with no extra space between them.
