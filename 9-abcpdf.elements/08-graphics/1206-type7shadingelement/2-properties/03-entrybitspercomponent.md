# EntryBitsPerComponent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "BitsPerComponent" entry of the type 7 shading dictionary object. |

## Notes

Represents the "BitsPerComponent" entry of the type 7 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 198.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=206)

BitsPerComponent sets the bit depth of the color component values at the four corners of each tensor patch. Valid values are 1, 2, 4, 8, 12, and 16.
