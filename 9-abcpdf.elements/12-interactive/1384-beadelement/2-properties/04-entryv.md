# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`BeadElement`](../index.md) | null | No | Represents the "V" entry of the bead dictionary object. |

## Notes

Represents the "V" entry of the bead dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [BeadElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 161, page 376.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=384)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 163, page 457.](https://www.iso.org/standard/63534.html)

The previous bead in the reading sequence. Together with N this forms a doubly linked circular list allowing traversal in both directions.
