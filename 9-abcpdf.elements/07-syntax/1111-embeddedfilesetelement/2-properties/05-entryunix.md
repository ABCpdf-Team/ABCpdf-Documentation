# EntryUnix Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EmbeddedFileStreamElement`](../../1112-embeddedfilestreamelement/index.md) | null | No | Represents the "Unix" entry of the embedded file set dictionary object. |

## Notes

Represents the "Unix" entry of the embedded file set dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification. It was marked obsolescent in PDF 1.7 and deprecated in PDF 2.0.

It contains an [EmbeddedFileStreamElement](../../1112-embeddedfilestreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

The Unix entry in an embedded file set maps the Unix path key to an embedded file stream for the POSIX version of the embedded file. This is a legacy entry retained for compatibility.
