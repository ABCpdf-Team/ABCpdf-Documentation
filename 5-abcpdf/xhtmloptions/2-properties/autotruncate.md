# AutoTruncate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to automatically clip redundant content at the end of the page. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property determines whether redundant content at the end of an HTML page is shown or not.

Redundancy is determined using a number of heuristics. However most commonly it covers repeating background images which do not need to be shown.
