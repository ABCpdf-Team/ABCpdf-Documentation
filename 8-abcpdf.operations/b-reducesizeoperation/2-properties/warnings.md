# Warnings Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `List<string>` | null | No | Warnings related to errors or inconsistencies found while reducing size. |

## Notes

Warnings related to errors or inconsistencies found while reducing size.

This property is null when the operation is constructed. A new List\<string> is assigned each time the [Compact](../1-methods/compact.md) method is called.
