# EntryParent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FieldElement`](../index.md) | null | No | Represents the "Parent" entry of the field dictionary object. |

## Notes

Represents the "Parent" entry of the field dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a [FieldElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 432.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=440)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=442)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.](https://www.iso.org/standard/63534.html)

Child fields reference their parent to allow traversal up the field tree and to reconstruct the fully qualified field name by concatenating T values at each level with period separators.
