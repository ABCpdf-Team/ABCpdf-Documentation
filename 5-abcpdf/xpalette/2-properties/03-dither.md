# Dither Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to dither colors when mapping to the palette. |

## Notes

Whether to dither colors when mapping to the palette.

When images are exported at a reduced color depth, they can be dithered.

Dithering uses a scattering of pixels of different colors to approximate colors that are not available.

In general it is a good idea to dither images like photographs which contain smooth gradations of colors.

It is best not to dither posterized images containing blocks of colors.
