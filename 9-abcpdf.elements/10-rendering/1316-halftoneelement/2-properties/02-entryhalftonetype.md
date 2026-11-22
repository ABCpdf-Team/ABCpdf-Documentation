# EntryHalftoneType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "HalftoneType" entry of the halftone dictionary object. |

## Notes

Represents the "HalftoneType" entry of the halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 308.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=316)

A viewer reads this entry before looking at anything else in the dictionary, because the value here determines which other entries are meaningful. Entries that belong to a different type are ignored.

The permitted values are 1, 5, 6, 10, and 16. Any other value is outside the scope of the PDF specification and a conforming viewer is not required to handle it.

Even within a type 5 composite dictionary, each sub-dictionary carries its own HalftoneType entry. A type 5 dictionary cannot contain another type 5 dictionary as a sub-entry.
