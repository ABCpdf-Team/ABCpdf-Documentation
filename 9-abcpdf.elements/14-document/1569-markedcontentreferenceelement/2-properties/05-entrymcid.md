# EntryMCID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "MCID" entry of the marked-content reference dictionary object. |

## Notes

Represents the "MCID" entry of the marked-content reference dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 324, page 561.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=569)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 357, page 727.](https://www.iso.org/standard/63534.html)

The MCID entry holds the marked content identifier matching the MCID property in the content stream. This integer links the reference to the exact marked content sequence.
