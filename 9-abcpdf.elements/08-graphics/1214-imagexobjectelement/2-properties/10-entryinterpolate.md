# EntryInterpolate Property

## Notes

Represents the "Interpolate" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 207.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 256.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

The Interpolate flag advises the renderer to smooth pixel boundaries when scaling the image above its natural resolution. When true, the renderer may apply a smoothing filter; when false, the raw pixel values are used without interpolation.

This flag is advisory. High-resolution output devices may ignore it. It primarily affects screen rendering where images are scaled up significantly.
