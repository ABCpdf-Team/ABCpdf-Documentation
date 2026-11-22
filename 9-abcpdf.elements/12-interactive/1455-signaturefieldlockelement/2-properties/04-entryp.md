# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "P" entry of the signature field lock dictionary object. |

## Notes

Represents the "P" entry of the signature field lock dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 1 and a maximum of 3.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 233, page 447.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=455)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.82, page 43.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=43)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 236, page 541.](https://www.iso.org/standard/63534.html)

The P entry extends the locking scope to annotated regions or pages. Its exact semantics depend on the transform being applied and the version of the specification in use.
