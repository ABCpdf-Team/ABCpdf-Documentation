# EntryInstance Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RichMediaInstanceElement`](../../../12-interactive/2089-richmediainstanceelement/index.md) | null | No | Represents the "Instance" entry of the 3d node dictionary object. |

## Notes

Represents the "Instance" entry of the 3d node dictionary object.

It is defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [RichMediaInstanceElement](../../../12-interactive/2089-richmediainstanceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 312, page 538.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=546)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 323, page 671.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 9.47, page 58.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=66)

The Instance entry holds the instance name as a byte string when the named node appears more than once in the model hierarchy. It distinguishes a specific instance from other instances of the same named node.
