# EntryColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | Represents the "ColorSpace" entry of the devicen process dictionary object. |

## Notes

Represents the "ColorSpace" entry of the devicen process dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 72, page 163.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=171)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 71, page 205.](https://www.iso.org/standard/63534.html)

The ColorSpace entry names the process color space - such as DeviceCMYK - to which the identified DeviceN components map. Components listed in the Components entry are handled as process inks in this space.
