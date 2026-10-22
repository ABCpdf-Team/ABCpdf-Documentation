# EntryFrequency Property

## Notes

Represents the "Frequency" entry of the type 1 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 130, page 309.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 128, page 371.

The value is in halftone cells per inch in default user space. The actual ruling on the printed page depends on the output device resolution and how the coordinate transformation maps user space to device pixels.

Without AccurateScreens, the viewer may round this value to one that fits evenly into the device pixel grid. With AccurateScreens set to true, the viewer tries to use the exact value requested, which costs more processing time and may not be honoured on all devices.
