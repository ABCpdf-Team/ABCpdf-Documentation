# EntryStructParent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "StructParent" entry of the annotation dictionary object. |

## Notes

Represents the "StructParent" entry of the annotation dictionary object.

It is defined as part of the PDF 1.3 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 384.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=392)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 466.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

In a tagged PDF this integer is the key into the page's parent tree, mapping this annotation to the structure element it corresponds to and enabling bidirectional navigation between annotation and document structure.
