# EntryResources Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ResourceElement`](../../../07-syntax/1091-resourceelement/index.md) | null | No | Represents the "Resources" entry of the type 1 pattern dictionary object. |

## Notes

Represents the "Resources" entry of the type 1 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [ResourceElement](../../../07-syntax/1091-resourceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 175.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=183)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 219.](https://www.iso.org/standard/63534.html)

The Resources dictionary holds all objects needed by the pattern's content stream, including fonts, images, color spaces, and other patterns. These resources are local to the pattern and are looked up within this dictionary before the enclosing context is consulted.
