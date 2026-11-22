# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "V" entry of the go-to-3d-view action object. |

## Notes

Represents the "V" entry of the go-to-3d-view action object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of four different types:.

1\) An integer representing a PDF numeric object.

2\) A string representing a PDF name object.

This item may take one of the following valid values:.

- F
- L
- N
- P
- D

.

3\) A string representing a PDF string object.

4\) A [D3DViewElement](../../../13-multimedia/1529-d3dviewelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 216, page 429.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=437)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 220, page 522.](https://www.iso.org/standard/63534.html)

The view identifier may be an integer (zero-based index), a string matching a view name, a direct 3D view dictionary, or the keyword First, Last, Next, or Prev to navigate relative to the current view.
