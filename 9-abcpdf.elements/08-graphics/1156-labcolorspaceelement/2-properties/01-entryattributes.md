# EntryAttributes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`LabColorSpaceAttributesElement`](../../1156-labcolorspaceattributeselement/index.md) | null | No | This property represents the parameters that characterize this device independent color space. |

## Notes

This property represents the parameters that characterize this device independent color space.

It is defined as part of the PDF 1.0 specification.

A [LabColorSpaceAttributesElement](../../1156-labcolorspaceattributeselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 148.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=156)

The Attributes entry references the Lab color space attributes dictionary that carries the white point, optional black point, and optional range array. These three items fully parameterise the L\*a\*b\* encoding.
