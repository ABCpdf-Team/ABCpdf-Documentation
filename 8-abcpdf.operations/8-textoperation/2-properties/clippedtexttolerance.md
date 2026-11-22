# ClippedTextTolerance Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `double` | 0.0 | No | How much overlap to require clipped text to have before it is defined as visible. |

## Notes

How much overlap to require clipped text to have before it is defined as visible.

If text is partially clipped then one needs to decide whether each character is visible or not. The default way this is done is by finding the center of each character and seeing if that is visible. This affects text retrieval when the [ShowClippedText](showclippedtext.md) property is set to false and also when passing an area of interest via [GetText](../1-methods/gettext.md).

Sometimes you may wish to be more selective about whether text is returned or not. The ClippedTextTolerance property allows you to define a rectangular area in the center of the character, the entire of which must be visible for the character to be visible. The width and height of the rectangular area are determined by the value of this property.

For example a value of zero represents a point in the center. A value of a half represents a centered rectangle half the linear dimensions of the character bounding box. A value of one represents the entire of the character bounding box from the bottom of any possible descenders to the top of any possible ascenders.
