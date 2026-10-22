# EntryCropBox Property

## Notes

Represents the "CropBox" entry of the page tree node object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a RectangleElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.

The CropBox entry in a page tree node defines the inheritable default crop box for descendant pages. Pages that do not specify their own CropBox inherit this value, which defaults to the MediaBox when absent at all levels.
