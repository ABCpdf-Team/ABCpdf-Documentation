# BackgroundRegion&nbsp;Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | null | No | Gets or sets the background rectangle. |

## Notes

The background region (in twips) is where the frame background is drawn. Set this property to change the extent or location of the background. The background region is set to the frame bounds/stage size if [ResetRegions](4-resetregions.md) is true. If it is null (and not set to non-null because of [ResetRegions](4-resetregions.md)), no background is drawn.

## Example

Also see example code in: [SwfImportOperation Import Function](1-methods/import.md).
