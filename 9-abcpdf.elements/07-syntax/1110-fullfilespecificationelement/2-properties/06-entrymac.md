# EntryMac Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Mac" entry of the full file specification dictionary object. |

## Notes

Represents the "Mac" entry of the full file specification dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was marked obsolescent in PDF 1.7 and deprecated in PDF 2.0.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 102.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=110)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=26)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 133.](https://www.iso.org/standard/63534.html)

The Mac entry holds a file path string in classic MacOS format for compatibility with old PDF documents. It is deprecated in PDF 2.0 in favour of the F and UF entries.
