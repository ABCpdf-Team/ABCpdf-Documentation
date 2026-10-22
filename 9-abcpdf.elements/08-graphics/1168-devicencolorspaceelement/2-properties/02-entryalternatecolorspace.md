# EntryAlternateColorSpace Property

## Notes

This property represents the alternate color space for this DeviceN color space.

A ColorSpaceElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 160.

The alternate color space is used on devices that cannot reproduce one or more of the named colorants. The tint transform function maps all DeviceN component values to this space.

The alternate space must have a number of components consistent with the tint transform function's output. Device color spaces such as DeviceCMYK are commonly used.
