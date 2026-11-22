# EntryLastChar Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "LastChar" entry of the truetype font dictionary object. |

## Notes

Represents the "LastChar" entry of the truetype font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=265)

This is the character code of the last entry in the Widths array. The Widths array length must equal LastChar minus FirstChar plus one.

Codes above this value fall back to MissingWidth in the same way as codes below FirstChar.
