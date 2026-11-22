# EntryMac Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MacOSFileInformationElement`](../../1113-macosfileinformationelement/index.md) | null | No | Represents the "Mac" entry of the embedded file parameter dictionary object. |

## Notes

Represents the "Mac" entry of the embedded file parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains a [MacOSFileInformationElement](../../1113-macosfileinformationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 46, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 45, page 137.](https://www.iso.org/standard/63534.html)

The Mac entry references a MacOS file information dictionary containing the classic MacOS creator and file type codes for the embedded file. This metadata is preserved for round-trip compatibility with classic MacOS applications.
