# EntryStateModel Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "StateModel" entry of the text annotation object. |

## Notes

Represents the "StateModel" entry of the text annotation object.

It is defined as part of the PDF 1.5 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 172, page 394.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=402)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 175, page 479.](https://www.iso.org/standard/63534.html)

The state model identifies which vocabulary of state values is in use. PDF defines two models: Marked (simple marked or unmarked) and Review (full review workflow with accepted, rejected, and other states).
