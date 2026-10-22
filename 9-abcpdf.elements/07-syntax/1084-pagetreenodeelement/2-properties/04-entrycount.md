# EntryCount Property

## Notes

Represents the "Count" entry of the page tree node object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.

The Count entry gives the total number of page objects in the subtree rooted at this node, including all descendants at any depth. A reader uses Count values to locate a page by index without visiting every node.
