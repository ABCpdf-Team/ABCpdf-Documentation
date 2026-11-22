# EntryResFork Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../1028-streamelement/index.md) | null | No | Represents the "ResFork" entry of the mac os file information dictionary object. |

## Notes

Represents the "ResFork" entry of the mac os file information dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [StreamElement](../../1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 47, page 105.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=113)

The ResFork entry references a stream containing the file's resource fork data. The resource fork is a MacOS-specific data structure that stores application resources such as icons, menus, and code segments alongside the file's data fork.
