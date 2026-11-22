# EntryFlags Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Flags" entry of the font descriptor object. |

## Notes

Represents the "Flags" entry of the font descriptor object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=290)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

The bits are numbered from 1 at the least significant end. Key bits include FixedPitch (bit 1) for monospaced fonts, Serif (bit 2), Symbolic (bit 3) for fonts with a non-standard encoding, Nonsymbolic (bit 6), and Italic (bit 7).

Bits 17 and 18 mark fonts that are designed for all-capitals or small-capitals use. Bit 19 marks fonts whose stems should be rendered bolder at small sizes.

Exactly one of Symbolic and Nonsymbolic should be set. Setting Symbolic means the font uses a custom encoding that does not match any standard.
