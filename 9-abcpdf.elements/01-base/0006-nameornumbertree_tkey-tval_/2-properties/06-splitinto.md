# SplitInto Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 4 | No | The number of child nodes a tree node is divided into when it is split. |

## Notes

The number of child nodes a tree node is divided into when it is split.

When the number of entries in a node reaches [SplitAt](05-splitat.md), the sorted entries are divided into this number of child nodes, each with its own Limits.

Together with [SplitAt](05-splitat.md), this property governs the branching factor of the tree.
