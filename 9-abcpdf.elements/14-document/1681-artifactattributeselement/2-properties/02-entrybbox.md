# EntryBBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "BBox" entry of the artifact attributes object. |

## Notes

Represents the "BBox" entry of the artifact attributes object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 385, page 787.](https://www.iso.org/standard/63534.html)

The BBox entry gives the artifact bounding box in default user space as a four-element array. Accessibility tools use this to identify and exclude artifact content from the logical reading order.
