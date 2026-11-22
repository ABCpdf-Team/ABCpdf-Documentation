# EntryPrivate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Private" entry of the page-piece data dictionary object. |

## Notes

Represents the "Private" entry of the page-piece data dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

The specification defines this property as being of any type. So any type of atom or data content is valid.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 319, page 552.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=560)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 351, page 715.](https://www.iso.org/standard/63534.html)

The Private entry holds the application private data as any PDF object. Its structure is defined entirely by the writing application. Conforming readers must preserve this entry unchanged even if they do not understand its content.
