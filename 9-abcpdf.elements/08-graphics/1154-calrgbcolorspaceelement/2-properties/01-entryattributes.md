# EntryAttributes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CalRGBColorSpaceAttributesElement`](../../1154-calrgbcolorspaceattributeselement/index.md) | null | No | This property represents the parameters that characterize this device independent color space. |

## Notes

This property represents the parameters that characterize this device independent color space.

It is defined as part of the PDF 1.0 specification.

A [CalRGBColorSpaceAttributesElement](../../1154-calrgbcolorspaceattributeselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 146.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=154)

The Attributes entry references the CalRGB attributes dictionary that carries the calibration parameters: white point, optional black point, optional gamma array, and optional matrix. Together these define the full mapping from encoded RGB to CIE XYZ.
