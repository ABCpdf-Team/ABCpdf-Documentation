# EntryU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ActionElement`](../../1422-actionelement/index.md) | null | No | Represents the "U" entry of the annotation additional-actions dictionary object. |

## Notes

Represents the "U" entry of the annotation additional-actions dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an [ActionElement](../../1422-actionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 194, page 415.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=423)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 197, page 504.](https://www.iso.org/standard/63534.html)

The mouse-up action fires when the primary mouse button is released over the annotation. For most action-triggering scenarios the U trigger is preferred over D because it gives the user a chance to cancel by moving the pointer away.
