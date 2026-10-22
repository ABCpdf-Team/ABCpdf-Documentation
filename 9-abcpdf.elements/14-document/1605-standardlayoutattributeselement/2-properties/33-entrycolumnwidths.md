# EntryColumnWidths Property

## Notes

Represents the "ColumnWidths" entry of the standard layout attributes object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains an array which contains doubles, representing PDF numeric objects.

If you read the specification you will see that an array of one double may be represented as a single double rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 343, page 597.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 378, page 770.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 344, page 600.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 379, page 774.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 345, page 604.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 380, page 778.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 346, page 608.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 381, page 782.

The ColumnWidths entry holds an array of column widths in default user space units. The array length must equal ColumnCount.
