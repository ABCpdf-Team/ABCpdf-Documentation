# ColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `ColorSpaceType` | null | Yes | This property represents the type of color space. |

## Notes

This property represents the type of color space.

It is a property of type ColorSpaceType.

This property gives access to the underlying PDF color space object. The object may be a name for device and some special color spaces, or an array for parameterised spaces such as CalRGB, ICCBased, and Indexed.

Modifying this property changes the color space associated with the element. The new value must be a well-formed color space specification consistent with the PDF version of the document.
