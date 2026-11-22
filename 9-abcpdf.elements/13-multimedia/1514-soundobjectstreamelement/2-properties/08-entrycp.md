# EntryCP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "CP" entry of the sound object stream object. |

## Notes

Represents the "CP" entry of the sound object stream object.

It is an optional entry defined as part of the PDF 1.0 specification.

The specification defines this property as being of undefined type. So the type of atom or data contained is not part of the specification. For practical purposes this means it may be of any type.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 294, page 507.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=515)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 305, page 634.](https://www.iso.org/standard/63534.html)

The CP entry holds codec-specific configuration parameters for the codec named in CO. The format and content are defined by the specific codec.
