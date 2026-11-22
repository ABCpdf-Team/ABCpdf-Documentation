# EntryData Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Data" entry of the signature reference dictionary object. |

## Notes

Represents the "Data" entry of the signature reference dictionary object.

It is defined as part of the PDF 1.0 specification.

The specification defines this property as being of any type. So any type of atom or data content is valid.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 253, page 470.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=478)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 256, page 568.](https://www.iso.org/standard/63534.html)

The data entry is an indirect reference to the object that is the input to the transform. For DocMDP and FieldMDP it is the entire document catalog.
