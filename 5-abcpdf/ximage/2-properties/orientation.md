# Orientation Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | See description. | Yes | The orientation of the current frame. |

## Notes

TIFF and JPEG files can contain an [Orientation](orientation.md) setting describing how the image would be most naturally viewed.

Postscript files can contain the DSC comment tag:

```
%%Orientation: Landscape/Portrait
```

that describes how the image would be most naturally viewed. For Landscape orientation, this property becomes 90 degrees

For example an image may be rotated by 90 degrees or flipped horizontally. These kinds of settings are most commonly used when images are scanned and orientation is only determined at a later date, perhaps via OCR.

This property may take any of the following values:

- 0 — (a.k.a. ORIENTATION_TOPLEFT) scan lines go from top to bottom, and pixels in each scan line go from left to right.
- -90 — (a.k.a. ORIENTATION_TOPRIGHT) scan lines go from top to bottom, and pixels in each scan lines go from right to left.
- 180 — (a.k.a ORIENTATION_BOTRIGHT) scan lines go from bottom to top, and pixels in each scan lines go from right to left.
- -270 — (a.k.a ORIENTATION_BOTLEFT) scan lines go from bottom to top, and pixels in each scan lines go from left to right.
- -360 — (a.k.a ORIENTATION_LEFTTOP) scan lines go from left to right, and pixels in each scan lines go from top to bottom.
- 90 — (a.k.a ORIENTATION_RIGHTTOP) scan lines go from right to left, and pixels in each scan lines go from top to bottom.
- -180 — (a.k.a ORIENTATION_RIGHTBOT) scan lines go from right to left, and pixels in each scan lines go from bottom to top.
- 270 — (a.k.a ORIENTATION_LEFTBOT) scan lines go from left to right, and pixels in each scan lines go from bottom to top.

By default the XImage will work with these settings to present the image the right way up. However you can select any presentation orientation by using the [AppliedOrientation](appliedorientation.md) property to apply a transform of your choice.
