# EntryRect Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "Rect" entry of the annotation dictionary object. |

## Notes

Represents the "Rect" entry of the annotation dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 383.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=391)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 464.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The rectangle defines the annotation's bounding box in default user space on the page. For most annotation types it is the sole geometry entry.
