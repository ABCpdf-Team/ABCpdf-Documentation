# IDConstant Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to assign a constant file version identifier. |

## Notes

This property determines if the file identifiers should be constant rather than unique.

PDF documents have two unique file identifiers. One is a file specific identifier which stays constant throughout the life of the file. The other is a file version identifier which is updated every time the document is saved.

This property allows you to ensure that the same identifiers are always used. This can be useful for debugging if you need to do a binary level comparison of files and you need to ensure that random elements have been eliminated.
