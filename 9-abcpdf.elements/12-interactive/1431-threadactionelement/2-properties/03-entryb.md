# EntryB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "B" entry of the thread action object. |

## Notes

Represents the "B" entry of the thread action object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) An integer representing a PDF numeric object.

2\) A [BeadElement](../../1384-beadelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 205, page 423.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=431)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 209, page 514.](https://www.iso.org/standard/63534.html)

The bead identifier selects the starting bead within the thread. It may be an integer index or an indirect reference to the bead object.
