# EntryFL Property

## Notes

Represents the "FL" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.

The flatness tolerance sets the maximum permitted error in user space units when an output device approximates curved path segments with straight line sequences. Smaller values produce smoother curves but require more line segments.

A flatness of zero requests the default accuracy of the output device. Very small values can substantially increase rendering time and output file size for complex curved paths.
