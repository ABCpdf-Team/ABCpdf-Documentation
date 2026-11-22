# EntryRM Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RenderModeElement`](../../1535-rendermodeelement/index.md) | null | No | Represents the "RM" entry of the 3d node dictionary object. |

## Notes

Represents the "RM" entry of the 3d node dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [RenderModeElement](../../1535-rendermodeelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 312, page 538.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=546)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 323, page 671.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 9.47, page 58.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=66)

The RM entry references a render mode dictionary overriding the render mode for this specific node, allowing individual model components to have different rendering styles.
