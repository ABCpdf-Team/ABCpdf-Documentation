# BitsPerComponent Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | No | The number of bits per color component. |

## Notes

The number of bits per color component.

This property can take the value 1, 2, 4, 8 or 16. Other values are not supported in the PDF Specification.

Setting this property only changes the bits per component recorded for the image. It does not convert the image data, so the data and the format of the image will no longer match. In general you should only set this property if you are also going to change the image data yourself.

To change the bits per component of an image use the [Resample](../1-methods/resample.md) method.
