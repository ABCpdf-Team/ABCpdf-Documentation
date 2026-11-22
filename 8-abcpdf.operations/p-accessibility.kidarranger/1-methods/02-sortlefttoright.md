# SortLeftToRight Function

Sort the kids of the parent element so that they go in order from the left to the right.

## Syntax

*C#*

`static void SortLeftToRight(`[`Structure`](../../n-accessibility.structure/index.md)` structure, StructureElementElement parent, List<XRect> areas)`

## Params

| Name | Description |
| :---: | --- |
| structure | The structure to operate on. |
| parent | The parent whos kids need sorting. |
| areas | A set of areas into which the elements should be placed. This value may be null. |

## Notes

Sort the kids of the parent element so that they go in order from the left to the right.

You can separate each page into sub-areas which will be sorted separately.

In this way you can sort multiple columns or rows independently.
