# EntryColorants Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`ColorSpaceElement`](../../0020-colorspaceelement/index.md)`>` | null | No | Represents the "Colorants" entry of the devicen colour space attributes dictionary object. |

## Notes

Represents the "Colorants" entry of the devicen colour space attributes dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 71, page 162.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=170)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 70, page 204.](https://www.iso.org/standard/63534.html)

The Colorants dictionary maps each colorant name in the DeviceN space to a corresponding Separation color space object. This allows a reader to look up the individual properties of each colorant, including its alternate space and tint transform.
