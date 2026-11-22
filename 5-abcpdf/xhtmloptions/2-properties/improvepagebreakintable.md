# ImprovePageBreakInTable Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to improve the support for page break in table to prevent missing rows. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) engine only.

The Gecko engine may truncate a table at the point that the last row on the page aligns exactly with the bottom of the page.

Set this property to true to resolve the problem.
