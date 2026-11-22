# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ThreadElement`](../../1384-threadelement/index.md) | null | No | Represents the "T" entry of the bead dictionary object. |

## Notes

Represents the "T" entry of the bead dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a [ThreadElement](../../1384-threadelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 161, page 376.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=384)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 163, page 457.](https://www.iso.org/standard/63534.html)

The thread entry is an indirect reference to the thread dictionary that contains this bead, providing the inverse of the thread's F (first bead) entry.
