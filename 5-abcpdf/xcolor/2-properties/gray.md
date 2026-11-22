# Gray Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The gray component. |

## Notes

Allows you to get or set the gray level.

Grayscale levels can range from 0 (black) to 255 (white).

Querying this property does not change the [ColorSpace](colorspace.md). This means you can obtain approximate Grayscale values for RGB or CMYK colors.

However if you change the value of this property the color will automatically be converted to Grayscale.

This property can also be used to specify levels for spot colorants. Levels can range from 0 (0% intensity) to 255 (100% intensity). See the [AddColorSpaceSpot](../../doc/1-methods/addcolorspacespot.md) method for an example.

## Example

Also see example code in: [Doc AddColorSpaceSpot Function](../../doc/1-methods/addcolorspacespot.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md).
