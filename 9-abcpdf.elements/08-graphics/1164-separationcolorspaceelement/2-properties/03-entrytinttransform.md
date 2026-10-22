# EntryTintTransform Property

## Notes

This property represents the tint transform function.

The function is used to map color values in the Separation color space into color values in the EntryAlternateColorSpace color space.

The function should be called with the tint value and should return a number of components in the alternate color space.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 156.

The tint transform function converts the single Separation tint value to component values in the alternate color space. It accepts one input in the range 0 to 1 and produces as many outputs as there are components in the alternate space.

A value of 0 represents the absence of the colorant; a value of 1 represents full colorant coverage. The function should produce the colorimetrically closest match in the alternate space for each tint level.
