# EntryH Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "H" entry of the widget annotation object. |

## Notes

Represents the "H" entry of the widget annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "I" if no value has been provided.

This item may take one of the following valid values:.

- N
- I
- O
- P
- T

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 188, page 408.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=416)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.39, page 39.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=39)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 191, page 495.](https://www.iso.org/standard/63534.html)

The highlighting mode controls the visual feedback shown while the user activates the widget: N (none), I (invert), O (outline), P (push), or T (toggle). Toggle is appropriate for checkboxes and radio buttons.
