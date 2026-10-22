# EntryAlternateColorSpace Property

## Notes

This property represents the alternate color space for this Separation color space.

A ColorSpaceElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 156.

The alternate color space provides a fallback rendering for devices that cannot produce the named colorant. It must have a color component count consistent with the output of the tint transform function.

When the target colorant is not available, a conforming reader uses the alternate space and tint transform together to compute an approximation of the intended color.
