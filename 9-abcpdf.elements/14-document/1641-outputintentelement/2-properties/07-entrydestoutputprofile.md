# EntryDestOutputProfile Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ICCProfileStreamElement`](../../../08-graphics/1157-iccprofilestreamelement/index.md) | null | No | Represents the "DestOutputProfile" entry of the output intent dictionary object. |

## Notes

Represents the "DestOutputProfile" entry of the output intent dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an [ICCProfileStreamElement](../../../08-graphics/1157-iccprofilestreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 365, page 634.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=642)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 401, page 815.](https://www.iso.org/standard/63534.html)

The DestOutputProfile entry references an embedded ICC profile stream characterising the target output device. A color management engine uses this profile to convert document colors to the output color space.
