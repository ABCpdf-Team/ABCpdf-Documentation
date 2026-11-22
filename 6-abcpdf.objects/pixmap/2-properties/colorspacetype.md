# ColorSpaceType Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ColorSpaceType` | n/a | No | The ColorSpace for this image. |

## Notes

The [ColorSpaceType](../../colorspace/2-properties/colorspacetype.md) for this image.

Referencing this property has a number of advantages over referencing the PixMap.ColorSpace.ColorSpaceType property.

Firstly it avoids the possibility that a new ColorSpace object will need to be created.

Secondly it takes account of the fact that certain types of PixMap (e.g. ImageMasks) do not have a ColorSpace. In these cases the ColorSpaceType is implicit in the definition of the PixMap and needs to be inferred by the PixMap itself.
