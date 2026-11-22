# EntryLastChar Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "LastChar" entry of the type 1 font dictionary object. |

## Notes

Represents the "LastChar" entry of the type 1 font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 255.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=263)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.](https://www.iso.org/standard/63534.html)

This value is the character code of the last entry in the Widths array. The number of entries in the Widths array must equal LastChar minus FirstChar plus one.

Codes above this value are not in the Widths array. As with codes below FirstChar, the viewer uses MissingWidth from the FontDescriptor for such codes.
