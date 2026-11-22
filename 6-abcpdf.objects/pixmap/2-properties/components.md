# Components Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The number of color components for each pixel. |

## Notes

The number of color components for each pixel.

For example Grayscale images contain one component, RGB images contain three and CMYK images contain four.

Referencing this property has a number of advantages over referencing the [PixMap.ColorSpace.Components](../../colorspace/2-properties/components.md) property.

Firstly it avoids the possibility that a new ColorSpace object will need to be created.

Secondly it takes account of the fact that certain types of PixMap (e.g. ImageMasks) do not have a ColorSpace. In these cases the number of components is implicit in the definition of the PixMap and needs to be inferred by the PixMap itself.
