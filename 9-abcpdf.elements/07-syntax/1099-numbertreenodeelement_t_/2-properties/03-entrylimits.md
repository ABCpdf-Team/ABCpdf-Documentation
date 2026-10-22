# EntryLimits Property

## Notes

This property represents the "Limits" entry of the number tree node dictionary object.

It is defined as part of the PDF 1.0 specification.

It is an Array containing two integer representing the lower and upper bounds of the tree.

The first int represents the lowest key in the EntryNums entry of this or any child nodes.

The second int represents the highest key in the EntryNums entry of this or any child nodes.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 37, page 91.

The Limits array in a number tree node holds exactly two integers: the smallest and largest keys in the subtree rooted at this node. Readers use these values to navigate to the correct subtree for a target key.
