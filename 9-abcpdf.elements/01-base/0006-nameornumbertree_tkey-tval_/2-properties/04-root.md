# Root Property

## Notes

The root element of the tree.

Before the tree has been split the root holds the entries directly. After it has been split the root holds a Kids array referencing the child nodes. Unlike the other nodes in the tree, the root has no Limits entry.

The way that nodes are split is determined by the SplitAt and SplitInto properties.
