# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EmbeddedFileStreamElement`](../../1112-embeddedfilestreamelement/index.md) | null | No | Represents the "F" entry of the embedded file set dictionary object. |

## Notes

Represents the "F" entry of the embedded file set dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an [EmbeddedFileStreamElement](../../1112-embeddedfilestreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

The F entry in an embedded file set maps the F path key to an embedded file stream reference. The stream contains the file data as it would appear under the file's default (platform-neutral) path.
