# EntryAP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`AppearanceElement`](../../1397-appearanceelement/index.md) | null | No | Represents the "AP" entry of the annotation dictionary object. |

## Notes

Represents the "AP" entry of the annotation dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an [AppearanceElement](../../1397-appearanceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 383.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=391)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 465.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The appearance dictionary separates the annotation's visual representation from its logical definition. Conforming readers must use the appearance stream for rendering rather than reconstructing the appearance from annotation entries.
