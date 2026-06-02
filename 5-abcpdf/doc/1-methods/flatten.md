# Flatten Function

Flattens and compresses the current page.

## Syntax

[C#]

```csharp
int Flatten()int Flatten(int compressionLevel)
```

## Params

| **Name** | **Description** |
| --- | --- |
| compressionLevel | The level of compression to apply as a percentage. Smaller numbers are faster but produce lower compresssion ratios. Pass -1 for a default choice. |
| return | n/a. |

## Notes

Objects added to a page are stored as individual layers. Calling this method combines all the layers on the current page and then re-compresses the layer data.

For pages that contain only a few layers the reduction in size will be minimal. However for pages which contain complex tables with many items, flattening can reduce the size of the output PDF by a factor of five or more.

Note that flattening will delete all the items currently on the page and replace them with a new compressed item. This means that Object IDs previously obtained from calls such as [AddText](addtext.md) or [FrameRect](framerect.md) will no longer be valid.

The compression level parameter controls the intensity of Flate compression applied to the current page content stream. Lower values execute faster but yield lower compression ratios, while higher values produce smaller output at the cost of speed. Passing -1 instructs the method to use a default compression level determined by the library.

## Example

None
