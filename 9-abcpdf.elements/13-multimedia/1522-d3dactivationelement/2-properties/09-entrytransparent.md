# EntryTransparent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "Transparent" entry of the 3d activation dictionary object. |

## Notes

Represents the "Transparent" entry of the 3d activation dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 299, page 514.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=522)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.34, page 56.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=56)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 310, page 643.](https://www.iso.org/standard/63534.html)

The Transparent entry, when true, causes the 3D annotation background to be transparent, allowing page content to show through the areas not covered by the model.
