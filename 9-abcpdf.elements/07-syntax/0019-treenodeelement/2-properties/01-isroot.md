# IsRoot Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | Yes | Nodes in a tree may be root, intermediate or leaf. |

## Notes

Nodes in a tree may be root, intermediate or leaf.

This property indicates if the node is a root node or not.

We can know this because only the root node has no "Limits" entry.

IsRoot indicates whether this node is the root of the tree. The root node is the one directly referenced from the document structure that contains the tree, such as the catalog entry for a name tree.
