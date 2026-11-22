# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "A" entry of the 3d activation dictionary object. |

## Notes

Represents the "A" entry of the 3d activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "XA" if no value has been provided.

This item may take one of the following valid values:.

- PO
- PV
- XA

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 299, page 514.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=522)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.34, page 56.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=56)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 310, page 642.](https://www.iso.org/standard/63534.html)

The A entry names the activation condition: XA for explicit activation by a 3D JavaScript action, PO for page open (activate when the page containing the annotation is opened), or PV for page visible (activate when the page comes into view).
