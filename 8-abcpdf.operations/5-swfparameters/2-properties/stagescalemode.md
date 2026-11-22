# StageScaleMode Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ContentScaleMode?` | null | No | The stage scale mode. |

## Notes

This property specifies the value of the ActionScript property Stage.scaleMode. If it is not null, Stage.scaleMode is set to (the string representation of) this value.

It can take any of the following values:

- ShowAll – make the content the biggest and completely within the area while keeping the aspect ratio.
- NoBorder – make the content the smallest and covering the entire area while keeping the aspect ratio.
- ExactFit – scale the content possibly with distortion to fit the entire area.
- NoScale – no scaling.
