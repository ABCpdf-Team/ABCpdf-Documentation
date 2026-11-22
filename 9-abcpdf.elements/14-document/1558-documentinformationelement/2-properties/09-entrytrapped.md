# EntryTrapped Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Trapped" entry of the document information dictionary object. |

## Notes

Represents the "Trapped" entry of the document information dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification. It was deprecated in PDF 2.0.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Unknown" if no value has been provided.

This item may take one of the following valid values:.

- True
- False
- Unknown

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 317, page 550.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=558)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 349, page 713.](https://www.iso.org/standard/63534.html)

The Trapped entry records the trapping status: True for fully trapped, False for not trapped, and Unknown for unknown or partial trapping. This affects how prepress systems handle the document.
