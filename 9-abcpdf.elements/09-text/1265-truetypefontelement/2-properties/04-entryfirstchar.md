# EntryFirstChar Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "FirstChar" entry of the truetype font dictionary object. |

## Notes

Represents the "FirstChar" entry of the truetype font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=265)

This is the character code of the first entry in the Widths array. Together with LastChar it bounds the range of codes for which explicit widths are given.

Codes below this value are not covered by Widths; the viewer falls back to MissingWidth from the FontDescriptor for those codes.
