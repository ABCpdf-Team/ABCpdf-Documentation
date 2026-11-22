# PngFilters Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `PngFilter` | PngFilter.AllFilters | No | The types of PNG filters to use. |

## Notes

The types of PNG filters or predictors to use when exporting as PNG.

The PngFilter enumeration may take the following values:

- NoFilters - No filters applied.
- None - Passes raw pixel data directly to compression without any transformation.
- Sub - For each pixel, subtracts the value of the left neighbor to encode horizontal differences.
- Up - For each pixel, subtracts the value of the pixel above it from the previous scanline to encode vertical differences.
- Avg - Calculates the average of the left and above pixels, then subtracts this from the current pixel to handle both horizontal and vertical patterns.
- Paeth - Paeth uses a sophisticated predictor that chooses the best reference pixel (left, above, or upper-left) to minimize the encoded value for complex patterns.
- FastFilters - All the fast filters - None, Sub and Up.
- AllFilters - All the filters.
