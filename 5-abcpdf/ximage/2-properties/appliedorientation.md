# AppliedOrientation Property

## Notes

TIFF, JPEG and Postscript files can contain an Orientation setting describing how the image would be most naturally viewed.

The AppliedOrientation property specifies a transform which will be applied to the image for presentation. The values here parallel the Orientation values and are designed to undo the reflections and rotations that each of those Orientation values represent.

As such the default value for this property is the value of Orientation which means that the image will always be transformed to present as it was intended.

The negative sign of each transform represents an initial swap of the x and the y coordinates while the absolute value represents the angle of a final clockwise rotation. The rotation is clockwise because, by default, scan lines go from top to bottom.

The following transforms are legal.

When this property is changed, both Selection and BoundingBox are re-oriented. If the orientation and transform combine to produce a 90 or 270 degree rotation, axis-specific values like Width / Height and HRes / VRes will be swapped.

Changing the value of this property may result in an exception being thrown if the file format or XReadOptions.ReadModule does not support orientation (e.g. SWF, etc.).

## Example

None.

