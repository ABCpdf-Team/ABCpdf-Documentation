# IncludeOffsets Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether or not to store information about the offsets of each of the Atoms in the stream. |

## Notes

Whether or not to store information about the offsets of each of the Atoms in the stream.

Storing offsets is an overhead but it is necessary if you want to use GetStreamAndOffset or GetPositionAndLength.
