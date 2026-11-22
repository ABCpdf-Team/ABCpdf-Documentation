# EntryBitsPerFlag Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "BitsPerFlag" entry of the type 7 shading dictionary object. |

## Notes

Represents the "BitsPerFlag" entry of the type 7 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 3.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 198.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=206)

BitsPerFlag sets the bit depth of the edge-sharing flag for each tensor patch. The flag meaning is the same as for Type 6 patches: it specifies which edges are shared with the preceding patch.
