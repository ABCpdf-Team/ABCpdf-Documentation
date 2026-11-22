# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ActionElement`](../../1422-actionelement/index.md) | null | No | Represents the "A" entry of the link annotation object. |

## Notes

Represents the "A" entry of the link annotation object.

It is an optional entry defined as part of the PDF 1.1 specification.

It contains an [ActionElement](../../1422-actionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 173, page 394.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=402)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 176, page 479.](https://www.iso.org/standard/63534.html)

The action dictionary may be of any action type. Using an action instead of Dest gives the link access to the full range of PDF action types including URI, JavaScript, and named actions.
