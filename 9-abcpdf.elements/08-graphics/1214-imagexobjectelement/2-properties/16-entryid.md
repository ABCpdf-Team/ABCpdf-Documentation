# EntryID Property

## Notes

Represents the "ID" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 208.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 257.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

The ID entry carries a byte-string identifier for this image within an OPI (Open Prepress Interface) workflow. It is used by OPI servers to match low-resolution proxy images in the PDF to their high-resolution counterparts during output processing.
