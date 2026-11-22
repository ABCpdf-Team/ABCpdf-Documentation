# EntryID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "ID" entry of the file trailer dictionary object. |

## Notes

Represents the "ID" entry of the file trailer dictionary object.

It is defined as part of the PDF 1.1 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=51)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 58.](https://www.iso.org/standard/63534.html)

The ID entry holds a two-element array of byte strings forming the document's file identifier. The first element is set when the document is created and should not change across revisions. The second element is updated each time the file is modified.

The document identifier is used by the encryption key derivation algorithm and by go-to-remote actions to confirm that a link target refers to the correct document version.
