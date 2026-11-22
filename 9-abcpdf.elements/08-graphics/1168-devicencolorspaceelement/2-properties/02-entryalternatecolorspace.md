# EntryAlternateColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | This property represents the alternate color space for this DeviceN color space. |

## Notes

This property represents the alternate color space for this DeviceN color space.

A [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

- [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 160.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=168)

The alternate color space is used on devices that cannot reproduce one or more of the named colorants. The tint transform function maps all DeviceN component values to this space.

The alternate space must have a number of components consistent with the tint transform function's output. Device color spaces such as DeviceCMYK are commonly used.
