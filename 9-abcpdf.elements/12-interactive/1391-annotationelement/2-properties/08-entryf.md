# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "F" entry of the annotation dictionary object. |

## Notes

Represents the "F" entry of the annotation dictionary object.

It is an optional entry defined as part of the PDF 1.1 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 383.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=391)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 464.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The flags integer uses bit positions 1 through 8 to control Invisible, Hidden, Print, NoZoom, NoRotate, NoView, ReadOnly, and Locked behaviour. Further bits control ToggleNoView and LockedContents in PDF 1.5 and later.
