# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ActionElement`](../../1422-actionelement/index.md) | null | No | Represents the "A" entry of the outline item dictionary object. |

## Notes

Represents the "A" entry of the outline item dictionary object.

It is an optional entry defined as part of the PDF 1.1 specification.

It contains an [ActionElement](../../1422-actionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 153, page 369.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=377)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 151, page 443.](https://www.iso.org/standard/63534.html)

Either A or Dest must be present. A is an action dictionary executed when the outline item is activated, allowing any action type to be triggered from an outline item.
