# EntryNumCopies Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "NumCopies" entry of the viewer preferences dictionary object. |

## Notes

Represents the "NumCopies" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 365.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=373)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 437.](https://www.iso.org/standard/63534.html)

Advises the viewer on how many copies to print by default. The viewer clips this to its supported range and the user may override it.
