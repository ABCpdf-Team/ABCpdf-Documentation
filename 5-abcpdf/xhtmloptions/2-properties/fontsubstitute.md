# FontSubstitute Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether font substitution should be used to reduce file size. |

## Notes

This property determines whether font substitution is enabled.

It applies to the Gecko and MSHTML engines only.

In many situations default built-in fonts can be substituted in place of the specified fonts.

This can result in a substantial increase in speed and a considerable reduction in file size with little or no loss in output quality.
