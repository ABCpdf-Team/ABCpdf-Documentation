# EntryRegistry Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Registry" entry of the cidsysteminfo dictionary object. |

## Notes

Represents the "Registry" entry of the cidsysteminfo dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 116, page 268.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=276)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 114, page 326.](https://www.iso.org/standard/63534.html)

This is an ASCII string naming the organisation that defined the character collection. The value Adobe is used for all standard Adobe-defined CID collections.

When pairing a CIDFont with a CMap, the Registry values must match exactly, character for character.
