# EntryPages Property

## Notes

Represents the "Pages" entry of the catalog dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a PageTreeNodeElement.

The PageTreeNodeElement represents the root node for all the pages in the document.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 73.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 98.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.

The Pages entry references the root node of the page tree. Every page in the document is a descendant of this root. A reader traverses the tree using the Count entries at each node to locate a specific page by index.
