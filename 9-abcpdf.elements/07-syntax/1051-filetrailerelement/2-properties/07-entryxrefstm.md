# EntryXRefStm Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "XRefStm" entry of the file trailer dictionary object. |

## Notes

Represents the "XRefStm" entry of the file trailer dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=51)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.](https://www.iso.org/standard/63534.html)

The XRefStm entry gives the byte offset of a cross-reference stream in a hybrid-reference file. A hybrid file contains both a traditional cross-reference table and a cross-reference stream covering the same revision.

PDF 1.5 and later readers use the cross-reference stream for its compressed object references. PDF 1.4 and earlier readers use only the cross-reference table and ignore the stream. This allows a single file to be read by both old and new readers.
