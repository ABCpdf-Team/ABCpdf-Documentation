# EntryBaseColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | This property represents the underlying color space for this Indexed color space. |

## Notes

This property represents the underlying color space for this Indexed color space.

It is defined as part of the PDF 1.0 specification.

A [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 156.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=164)

The base color space defines the type and number of components of each entry in the lookup table. It determines how each table row is interpreted when the index is used to select a color.

The base space must not be another Indexed or Pattern space. Any other color space is permitted, including device, CIE-based, and special spaces such as Separation and DeviceN.
