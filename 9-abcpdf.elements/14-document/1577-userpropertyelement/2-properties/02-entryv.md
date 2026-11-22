# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "V" entry of the user property dictionary object. |

## Notes

Represents the "V" entry of the user property dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

The specification defines this property as being of any type. So any type of atom or data content is valid.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 329, page 569.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=577)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 362, page 736.](https://www.iso.org/standard/63534.html)

The V entry holds the property value, which may be any PDF object type: string, number, boolean, array, or dictionary, depending on the property intended semantics.
