# EntryLimits Property

## Notes

This property represents the "Limits" entry of the name tree node dictionary object.

It is defined as part of the PDF 1.0 specification.

It is an Array containing two strings representing the lower and upper bounds of the tree.

The first string represents the lowest key in the EntryNames entry of this or any child nodes.

The second string represents the highest key in the EntryNames entry of this or any child nodes.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 36, page 89.

The Limits array in a name tree node holds exactly two string values: the lexicographically smallest and largest keys within the entire subtree rooted at this node. Readers use Limits at each level to determine whether a target key can be found in a subtree without descending into it.
