# UseFontHints Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to use font hinting instructions. |

## Notes

Whether to use font hinting instructions.

Font hinting is a technical process used to optimize the rendering of vector-based outline fonts on low-resolution displays, such as computer monitors, by embedding a set of instructions - hints - into the font file itself.

These hints tell the rasterization engine how to subtly adjust the contours of glyphs - like aligning stem widths and edges to pixel boundaries - to prevent blurriness, improve contrast and maintain consistent character proportions and spacing at small sizes.

By making these micro-adjustments on a pixel grid, hinting ensures that text remains legible, sharp, and aesthetically pleasing even at low pixel densities, striking a crucial balance between the font's original design intent and the limitations of the screen.
