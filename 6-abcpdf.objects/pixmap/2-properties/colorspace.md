# ColorSpace Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpace`](../../colorspace/index.md) | n/a | No | The ColorSpace for this image. |

## Notes

The [ColorSpace](../../colorspace/index.md) for this image.

Note that referencing this property may result in the creation of a color space if one does not already exist. So you should avoid querying this property while iterating through the [ObjectSoup](../../2-objectsoup/index.md). If you do so and an object is created then it will invalidate the enumerator and cause an exception to be raised.

Not all PixMaps have color spaces. For example image masks do not and must not contain a color space atom; they are implicitly one bit grayscale. In this case the ColorSpace property will be null.

In most cases properties which you might like to reference via the ColorSpace can be referenced directly via the PixMap. This is a less intrusive way of obtaining the same information.

Querying the value of this property will never raise an exception.

Assigning a value to this property changes the color space without changing the raw pixel values of the image. You might wish to do this if you wanted to convert - say - a DeviceRGB to a CalRGB color space or a DeviceGray to a Separation color space.

The number of components in the two color spaces should be the same. If they are not then an exception will be thrown. If you wish to bypass this check then first set the [ColorSpaceType](colorspacetype.md) to the base color space and then set this property afterwards.

If you wish to convert the image pixel values from one color space to another then you need to use the [Recolor](../1-methods/recolor.md) method.
