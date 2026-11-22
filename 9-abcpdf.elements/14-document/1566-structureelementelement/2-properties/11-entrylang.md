# EntryLang Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Lang" entry of the structure element dictionary object. |

## Notes

Represents the "Lang" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 559.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=567)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.](https://www.iso.org/standard/63534.html)

The Lang entry specifies the natural language of this element content as a Unicode language tag, overriding ancestor language declarations and enabling correct language tagging in multilingual documents.
