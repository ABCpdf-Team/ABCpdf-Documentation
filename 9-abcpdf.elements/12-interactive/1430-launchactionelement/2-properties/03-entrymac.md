# EntryMac Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Mac" entry of the launch action object. |

## Notes

Represents the "Mac" entry of the launch action object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

The specification defines this property as being of undefined type. So the type of atom or data contained is not part of the specification. For practical purposes this means it may be of any type.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 203, page 422.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=430)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 207, page 513.](https://www.iso.org/standard/63534.html)

The Mac launch parameters hold macOS-specific information. The structure is viewer-defined and not standardised in the PDF specification.
