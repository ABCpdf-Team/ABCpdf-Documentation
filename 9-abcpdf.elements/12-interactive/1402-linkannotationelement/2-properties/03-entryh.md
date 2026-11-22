# EntryH Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "H" entry of the link annotation object. |

## Notes

Represents the "H" entry of the link annotation object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "I" if no value has been provided.

This item may take one of the following valid values:.

- N
- I
- O
- P

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 173, page 395.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=403)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 176, page 479.](https://www.iso.org/standard/63534.html)

The highlighting mode determines the visual feedback given while the link is being pressed: N (none), I (invert), O (outline), or P (push, which shifts the content slightly to simulate a button press).
