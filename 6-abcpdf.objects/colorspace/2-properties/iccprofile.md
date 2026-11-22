# IccProfile Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`IccProfile`](../../iccprofile/index.md) | n/a | No | Any ICC Color Profile associated with this color space. |

## Notes

Any [IccProfile](../../iccprofile/index.md) describing an ICC Color Profile associated with this color space.

Querying the value of this property will never raise an exception.

Assigning a new value to this property automatically results in the [IccProfile](../../iccprofile/index.md) being decompressed, validated, recompressed and (if it is not already there) added to the same [ObjectSoup](../../2-objectsoup/index.md) as the ColorSpace.

The [ColorSpaceType](colorspacetype.md) and [Components](components.md) properties will change to reflect the color space of the new profile.

An exception will be thrown if the assignation is not possible. This may happen if the ColorSpace is not in an ObjectSoup or if the IccProfile is not valid.

## Example

See the [PixMap.Recolor](../../pixmap/1-methods/recolor.md) function.

Also see example code in: [PixMap Recolor Function](../../pixmap/1-methods/recolor.md).
