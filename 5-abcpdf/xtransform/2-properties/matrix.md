# Matrix Property

## Notes

The transform as a System.Drawing.Drawing2D Matrix.

This matrix type holds element values as single precision floating point values so it is less accurate than the underlying XTransform.

Windows coordinates are measured in distances from the top left of the drawing surface while PDF coordinates are measured from the bottom left.

Remember that transforms operate on the underlying PDF coordinates rather than on any Windows coordinates. So by specifying a rotation around the origin you are specifying a rotation anchored at the bottom left of the document page.

## Example

None.

