# Realize Function

## Syntax

[C#] void Realize()

may throw Exception()

## Params

## Notes

Converts the image from indexed color to component color.

The process of converting an indexed color image into a component color image, will result in any chromakeys being converted to masks and the elimination of any decode arrays.

The Indexed color space is used for palettized color. Each item in the palette is defined in terms of a base color space such as DeviceRGB. Palettes can hold up to 256 entries.

After an indexed color image has been realized it is no longer compressed. You may wish to compress it using the StreamObject.Compress method.

## Example

See the Resize function.

Also see example code in: PixMap Resize Function.

