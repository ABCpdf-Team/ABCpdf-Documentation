# EntryPrintScaling Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "PrintScaling" entry of the viewer preferences dictionary object. |

## Notes

Represents the "PrintScaling" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "AppDefault" if no value has been provided.

This item may take one of the following valid values:.

- None
- AppDefault

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 364.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=372)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 437.](https://www.iso.org/standard/63534.html)

When set to None the viewer should send the document to the printer without automatic scaling. AppDefault allows the viewer to apply its default print-scaling heuristic.
