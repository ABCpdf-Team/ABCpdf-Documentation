# Type0SampleCount Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 64 | No | Gets or sets the number of Type 0 function samples to generate (between 64 and 1000). |

## Notes

The default number of Type 0 sample values to generate when converting from a Type 2 to a Type 0 function.

When a colorspace that uses a Type 2 function is converted to a new colorspace, that new colorspace is sampled to create a replacement Type 0 function. Many times the default number of samples is adequate, but occasionally one needs more samples to eliminate the subtle banding effect encountered during shades, etc.

## Example

Also see example code in: [RecolorOperation IccCmyk Property](icccmyk.md).
