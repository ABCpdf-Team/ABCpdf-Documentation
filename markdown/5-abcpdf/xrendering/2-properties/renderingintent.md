# RenderingIntent Property

&nbsp;

## Notes

The default rendering intent for the operation.

The rendering intent determines how out of gamut colors are handled. The following options are available:

Perceptual RelativeColorimetric Saturation AbsoluteColorimetric

The perceptual model maps the entire gamut of the source color space into the destination one and is good for photographic type images. The saturation model is good for diagrams, cartoons or posterized images where distinctiveness of color is more important than precise color fidelity. The colorimetric methods remap only those colors which are out of gamut. The relative one keeps the color values the same while allowing the brightness to vary. The absolute colorimetric method uses the closest color at the gamut boundary.

In general you will want to use a perceptual intent when mapping from a large gamut color space (e.g. RGB) to a narrow one (e.g. CMYK). In general you will want to use a relative colorimetric intent when mapping between similar color spaces (e.g. RGB to RGB or CMYK to CMYK).

