# EntryHiVal Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | This property represents the highest number used to index into the palette. |

## Notes

This property represents the highest number used to index into the palette.

It is defined as part of the PDF 1.0 specification.

An positive integer no higher than 255.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 156.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=164)

The hival integer sets the highest valid index value. Indices outside the range 0 to hival are an error. The lookup table contains exactly hival + 1 entries, each of which holds one full color sample in the base color space.
