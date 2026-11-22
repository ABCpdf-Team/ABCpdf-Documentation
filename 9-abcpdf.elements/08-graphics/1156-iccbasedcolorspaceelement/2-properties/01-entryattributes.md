# EntryAttributes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ICCProfileStreamElement`](../../1157-iccprofilestreamelement/index.md) | null | No | This property represents the parameters that characterize this device independent color space. |

## Notes

This property represents the parameters that characterize this device independent color space.

It is defined as part of the PDF 1.3 specification.

A ICCBasedColorSpaceAttributesElement.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 148.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=156)

The Attributes entry references the ICC profile stream object that defines this color space. The stream carries the binary ICC profile data, the N entry specifying the number of color components, an optional alternate color space, and an optional range array.
