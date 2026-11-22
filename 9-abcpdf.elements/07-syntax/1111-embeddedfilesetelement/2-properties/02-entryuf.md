# EntryUF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EmbeddedFileStreamElement`](../../1112-embeddedfilestreamelement/index.md) | null | No | Represents the "UF" entry of the embedded file set dictionary object. |

## Notes

Represents the "UF" entry of the embedded file set dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an [EmbeddedFileStreamElement](../../1112-embeddedfilestreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

The UF entry in an embedded file set maps the UF path key to an embedded file stream reference. This is the Unicode-path equivalent of the F entry.
