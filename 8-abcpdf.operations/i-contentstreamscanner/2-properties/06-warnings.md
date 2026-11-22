# Warnings Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `List<string>` | null | No | Content streams contain operators and parameters. |

## Notes

Content streams contain operators and parameters.

If part of the content stream is badly formed - for example if a parameter is missing - then an internal exception will be raised.

Typically you want to move on past this and try and recover. Just because a text spacing operator is incorrect does not mean you want to abandon the whole page.

Equally you do not want to completely ignore this type of error. As such, if you assign a value to this property, any errors or warnings will be stored here.
