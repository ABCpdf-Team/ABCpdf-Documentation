# SplitAt Property

## Notes

The number of entries at which a tree node is split.

Name trees and number trees are balanced tree structures which map keys to values without running into the size limits of a standard PDF dictionary. Leaf nodes hold the sorted key-value pairs in a Names or Nums array. Intermediate nodes hold a Kids array referencing their child nodes. Every node other than the root has a Limits array giving the smallest and largest keys beneath it, so a reader can go directly to the right leaf rather than scanning every entry.

When the number of entries in a node reaches this value, the entries are redistributed into SplitInto child nodes, each with its own Limits. This keeps lookups fast as the tree grows.

Together with SplitInto, this property governs the branching factor of the tree.
