# EntryAnnotation Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MovieAnnotationElement`](../../1415-movieannotationelement/index.md) | null | No | Represents the "Annotation" entry of the movie action object. |

## Notes

Represents the "Annotation" entry of the movie action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [MovieAnnotationElement](../../1415-movieannotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 209, page 425.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=433)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 213, page 517.](https://www.iso.org/standard/63534.html)

The annotation entry holds an indirect reference to the movie annotation whose playback is to be controlled. Either Annotation or T must be present.
