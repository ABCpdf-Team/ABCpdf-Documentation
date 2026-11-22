# ClipRegion Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XRect`](../../../5-abcpdf/xrect/index.md) | null | No | Gets or sets the clip rectangle. |

## Notes

The clip region (in twips) is where the frame foreground is drawn. Set this property to change the extent or location of the frame foreground. If the foreground extends outside of this region, it will be clipped. The clip region is set to the frame bounds/stage size if [ResetRegions](4-resetregions.md) is true. If it is null (and not set to non-null because of [ResetRegions](4-resetregions.md)), the content is not clipped.
