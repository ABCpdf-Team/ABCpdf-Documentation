# EntryBaseEncoding Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "BaseEncoding" entry of the encoding dictionary object. |

## Notes

Represents the "BaseEncoding" entry of the encoding dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- MacRomanEncoding
- MacExpertEncoding
- WinAnsiEncoding

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 114, page 263.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=271)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 112, page 320.](https://www.iso.org/standard/63534.html)

The three permitted values are MacRomanEncoding, MacExpertEncoding, and WinAnsiEncoding. If absent, the starting point is the font's own built-in encoding rather than any standard one.

MacExpertEncoding is designed for expert-set fonts that contain special characters such as old-style figures, fractions, and ligatures. It is rarely used outside specialist typography.
