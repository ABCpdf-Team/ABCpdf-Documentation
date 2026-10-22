# EntryParent Property

## Notes

Represents the "Parent" entry of the outline item dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) An OutlineElement.

2) An OutlineItemElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 153, page 368.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 151, page 442.

For top-level items the parent is the outline root dictionary; for nested items it is the enclosing outline item. This reference allows tree traversal upward from any item.
