# EntryObj Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Obj" entry of the object reference dictionary object. |

## Notes

Represents the "Obj" entry of the object reference dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

The specification defines this property as being of any type. So any type of atom or data content is valid.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 325, page 564.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=572)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 358, page 730.](https://www.iso.org/standard/63534.html)

The Obj entry is an indirect reference to the PDF object constituting this part of the structure element content, typically an annotation dictionary or image XObject.
