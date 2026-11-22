# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "R" entry of the target dictionary object. |

## Notes

Represents the "R" entry of the target dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- P
- C

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 202, page 420.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=428)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 205, page 510.](https://www.iso.org/standard/63534.html)

The relationship code is P (parent) or C (child). P means the target is the file that contains the current file as an attachment. C means the target is an embedded file within the current file.
