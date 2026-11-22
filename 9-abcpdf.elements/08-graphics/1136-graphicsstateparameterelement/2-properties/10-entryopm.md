# EntryOPM Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "OPM" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "OPM" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=137)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The overprint mode refines how a zero-valued color component interacts with overprinting. A value of 0 means zero components knock out the underlying ink. A value of 1 means zero components are treated as transparent, leaving the underlying ink in place.

OPM 1 is significant in CMYK workflows where a color with a zero black component should not accidentally erase black ink from underlying objects.
