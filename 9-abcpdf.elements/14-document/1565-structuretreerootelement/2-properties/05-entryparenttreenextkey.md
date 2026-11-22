# EntryParentTreeNextKey Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "ParentTreeNextKey" entry of the structure tree root object. |

## Notes

Represents the "ParentTreeNextKey" entry of the structure tree root object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 720.](https://www.iso.org/standard/63534.html)

The ParentTreeNextKey entry holds the next available integer key for insertion into the parent tree. When a new page is added and assigned a StructParent key, the new key must not exceed this value, which is then incremented.
