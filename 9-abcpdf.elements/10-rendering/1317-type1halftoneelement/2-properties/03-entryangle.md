# EntryAngle Property

## Notes

Represents the "Angle" entry of the type 1 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 130, page 309.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 128, page 371.

The value is in degrees, rotating counter-clockwise from the positive x axis in default user space. Typical values for colour printing separations are 0, 15, 45, 75, and 90 degrees, chosen so that adjacent screens are far enough apart in angle to keep moire below the threshold of visibility.

As with Frequency, the viewer may adjust the angle slightly to align with device pixels unless AccurateScreens requests exact rendering.
