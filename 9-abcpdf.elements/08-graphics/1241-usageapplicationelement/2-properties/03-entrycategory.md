# EntryCategory Property

## Notes

Represents the "Category" entry of the usage application dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 103, page 233.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 101, page 286.

The Category array lists the usage dictionary keys that are relevant for this application. When the event fires, the processor consults only the usage sub-dictionaries named here - for example, Zoom and Print for a print application - and ignores others.
