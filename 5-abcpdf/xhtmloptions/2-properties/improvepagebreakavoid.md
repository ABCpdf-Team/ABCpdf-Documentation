# ImprovePageBreakAvoid Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to improve the support for page-break-inside of avoid. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) engine only.

The Gecko engine does not support some complex uses of CSS style "page-break-inside:avoid".

In particular, it does not work well when this style is applied inside table elements.

Set this property to true to improve the layout of elements using this style.
