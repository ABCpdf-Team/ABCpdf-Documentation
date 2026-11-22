# EntryAttributes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CalGrayColorSpaceAttributesElement`](../../1153-calgraycolorspaceattributeselement/index.md) | null | No | This property represents the parameters that characterize this device independent color space. |

## Notes

This property represents the parameters that characterize this device independent color space.

It is defined as part of the PDF 1.1 specification.

A [CalGrayColorSpaceAttributesElement](../../1153-calgraycolorspaceattributeselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 145.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=153)

The Attributes entry references the CalGray color space attributes dictionary that carries the calibration parameters: white point, optional black point, and gamma. These three values fully define the mapping from encoded gray to CIE Y.
