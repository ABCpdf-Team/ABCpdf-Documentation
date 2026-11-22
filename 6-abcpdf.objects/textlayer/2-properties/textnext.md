# TextNext Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | No | The offset to the character which will be drawn at the start of next item in the chain. |

## Notes

The offset to the character (in the [FullText](fulltext.md)) which will be drawn as the next item in the chain.

By changing this property you can control the character at which the next item in the chain starts. So by increasing the value you can skip characters between chained items. By decreasing the value you can repeat text from the previous item.
