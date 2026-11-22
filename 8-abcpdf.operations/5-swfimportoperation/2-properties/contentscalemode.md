# ContentScaleMode Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ContentScaleMode?` | ExactFit | No | Gets or sets the content scale mode. |

## Notes

This property specifies the scale mode of the content in the target rectangle.

It can take any of the following values:

- ShowAll – make the content the biggest and completely within the area while keeping the aspect ratio.
- NoBorder – make the content the smallest and covering the entire area while keeping the aspect ratio.
- ExactFit – scale the content possibly with distortion to fit the entire area.
- NoScale – no scaling.

If it is null, the value of the ActionScript property Stage.scaleMode is used.

## Example

See the [ProcessingInfo.FrameNumber](../../2-processinginfo/2-properties/framenumber.md) property.

Also see example code in: [ProcessingInfo FrameNumber Property](../../2-processinginfo/2-properties/framenumber.md).
