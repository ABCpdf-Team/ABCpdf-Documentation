# EntryImage Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ImageXObjectElement`](../../1214-imagexobjectelement/index.md) | null | No | Represents the "Image" entry of the alternate image dictionary object. |

## Notes

Represents the "Image" entry of the alternate image dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an [ImageXObjectElement](../../1214-imagexobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 91, page 212.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=220)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 89, page 261.](https://www.iso.org/standard/63534.html)

The Image entry references the substitute Image XObject. This XObject may have different dimensions, color space, or encoding from the parent image, allowing it to be optimised for a specific output condition.
