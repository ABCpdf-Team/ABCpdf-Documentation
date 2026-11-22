# EntryView Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "View" entry of the collection dictionary object. |

## Notes

Represents the "View" entry of the collection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "D" if no value has been provided.

This item may take one of the following valid values:.

- D
- T
- H
- C

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=29)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 446.](https://www.iso.org/standard/63534.html)

The view name selects the initial presentation mode: D (details/list), T (tiles), H (hidden), or C (custom navigator). Viewers that do not support a named mode fall back to their default.
